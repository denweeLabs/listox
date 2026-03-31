import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/use_case/add_quick_grocery_use_case.dart';
import 'package:listox/core/groceries/domain/use_case/clear_grocery_selection_use_case.dart';
import 'package:listox/core/groceries/domain/use_case/confirm_purchase_use_case.dart';
import 'package:listox/core/groceries/domain/use_case/delete_grocery_use_case.dart';
import 'package:listox/core/groceries/domain/use_case/get_categorized_groceries_use_case.dart';
import 'package:listox/core/groceries/domain/use_case/update_grocery_use_case.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/core/notifications/domain/use_case/schedule_notifications_use_case.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';

part 'groceries_state.dart';
part 'groceries_cubit.freezed.dart';

@LazySingleton()
class GroceriesCubit extends Cubit<GroceriesState> {
  final GetCategorizedGroceriesUseCase _getCategorizedItemsUseCase;
  final ConfirmGroceriesPurchaseUseCase _confirmPurchaseUseCase;
  final UpdateGroceryUseCase _updateItemUseCase;
  final DeleteGroceryUseCase _deleteItemUseCase;
  final ScheduleNotificationsUseCase _scheduleNotificationsUseCase;
  final AddQuickGroceryUseCase _addQuickGroceryUseCase;
  final ClearGrocerySelectionUseCase _clearGrocerySelectionUseCase;

  StreamSubscription? _itemsSubscription;

  bool _isPremium = false;
  List<Grocery> _allThisWeekItems = [];
  List<Grocery> _allLaterItems = [];
  // O(1) ID → Grocery lookup; rebuilt from every stream event.
  Map<UniqueId, Grocery> _groceryById = {};

  // Sticky freemium visible set: initialized once, never grows to reveal
  // previously-hidden items. Shrinks when items are purchased/deleted.
  // Only grows for genuinely new items (IDs not seen before) if under the limit.
  // null = premium (show all).
  Set<UniqueId>? _freemiumVisibleIds;
  Set<UniqueId> _knownRegularIds = {};

  GroceriesCubit(
    this._getCategorizedItemsUseCase,
    this._confirmPurchaseUseCase,
    this._updateItemUseCase,
    this._deleteItemUseCase,
    this._scheduleNotificationsUseCase,
    this._addQuickGroceryUseCase,
    this._clearGrocerySelectionUseCase,
  ) : super(GroceriesState.initial());

  void init() {
    _itemsSubscription?.cancel();
    _itemsSubscription = _getCategorizedItemsUseCase.watch().listen((result) {
      _allThisWeekItems = result.thisWeekGroceries;
      _allLaterItems = result.laterGroceries;
      _groceryById = result.allGroceries;
      _emitFilteredGroceries();
    });
  }

  void updatePremiumStatus(bool isPremium) {
    if (_isPremium == isPremium) return;
    _isPremium = isPremium;
    _emitFilteredGroceries();
  }

  void _emitFilteredGroceries() {
    final limit = AppConstants.maxItemsSelectionCount;

    // Quick-add items are always visible and never count toward the freemium limit.
    final allRegular = [
      ..._allThisWeekItems.where((g) => !g.isQuickAdd),
      ..._allLaterItems.where((g) => !g.isQuickAdd),
    ];
    final currentRegularIds = {for (final g in allRegular) g.id};

    if (_isPremium || allRegular.length <= limit) {
      _freemiumVisibleIds = null;
      _knownRegularIds = currentRegularIds;
      
      emit(state.copyWith(
        thisWeekItems: _allThisWeekItems,
        laterItems: _allLaterItems,
        thisWeekHasHiddenItems: false,
        laterHasHiddenItems: false,
        isLoading: false,
      ));
      return;
    }

    // --- Sticky freemium visible set ---
    // Initialize on first entry into freemium-over-limit state.
    if (_freemiumVisibleIds == null) {
      _freemiumVisibleIds = {};
      // Checked items first — they were definitely visible when the user
      // selected them, so they must stay visible even after an app restart.
      for (final g in allRegular) {
        if (g.isSelected) _freemiumVisibleIds!.add(g.id);
      }
      // Fill remaining slots with unchecked items in consumption-period order.
      for (final g in allRegular) {
        if (_freemiumVisibleIds!.length >= limit) break;
        if (!g.isSelected) _freemiumVisibleIds!.add(g.id);
      }
      _knownRegularIds = currentRegularIds;
    } else {
      // Drop IDs that were purchased/deleted.
      _freemiumVisibleIds!.removeWhere((id) => !currentRegularIds.contains(id));

      // Admit genuinely new items (not previously known) up to the limit.
      // Previously-hidden items are already in _knownRegularIds and are skipped.
      for (final g in allRegular) {
        if (_freemiumVisibleIds!.length >= limit) break;

        if (!_knownRegularIds.contains(g.id)) {
          _freemiumVisibleIds!.add(g.id);
        }
      }
      _knownRegularIds = currentRegularIds;
    }

    final visibleRegularIds = _freemiumVisibleIds!;
    final visibleThisWeek = _allThisWeekItems
        .where((g) => g.isQuickAdd || visibleRegularIds.contains(g.id))
        .toList();
    final visibleLater = _allLaterItems
        .where((g) => g.isQuickAdd || visibleRegularIds.contains(g.id))
        .toList();

    emit(state.copyWith(
      thisWeekItems: visibleThisWeek,
      laterItems: visibleLater,
      thisWeekHasHiddenItems: _allThisWeekItems.any(
        (g) => !g.isQuickAdd && !visibleRegularIds.contains(g.id),
      ),
      laterHasHiddenItems: _allLaterItems.any(
        (g) => !g.isQuickAdd && !visibleRegularIds.contains(g.id),
      ),
      isLoading: false,
    ));
  }

  Future<void> toggleGrocerySelection(UniqueId itemId) async {
    final grocery = _groceryById[itemId];
    if (grocery == null) return;

    final nowSelected = !grocery.isSelected;

    await _updateItemUseCase.execute(grocery.copyWith(
      isSelected: nowSelected,
      selectedQuantity: nowSelected ? grocery.selectedQuantity : 1,
      purchaseOrder: nowSelected
          ? Some(DateTime.now().millisecondsSinceEpoch)
          : const None(),
    ));
    // stream handles state update
  }

  Future<void> setGroceryQuantity(UniqueId id, int quantity) async {
    final grocery = _groceryById[id];
    if (grocery == null) return;

    await _updateItemUseCase.execute(
      grocery.copyWith(
        selectedQuantity: quantity.clamp(
          AppConstants.itemMinQuantity,
          AppConstants.itemMaxQuantity,
        ),
      ),
    );
  }

  Future<void> clearSelection() async {
    await _clearGrocerySelectionUseCase.execute();
    // stream handles state update
  }

  Future<void> confirmPurchase() async {
    final selectedItems = _groceryById.values.where((g) => g.isSelected).toList();
    if (selectedItems.isEmpty) return;

    emit(state.copyWith(isConfirming: true, failure: const None()));

    final result = await _confirmPurchaseUseCase.execute(selectedItems);

    result.fold(
      (failure) => emit(state.copyWith(isConfirming: false, failure: Some(failure))),
      (_) {
        unawaited(_scheduleNotificationsUseCase.execute(newPurchaseDate: DateTime.now()));
        emit(state.copyWith(isConfirming: false));
        // stream handles cleared selection from DB
      },
    );
  }

  Future<void> updateGrocery(Grocery item) async {
    final result = await _updateItemUseCase.execute(item);
    result.fold(
      (failure) => emit(state.copyWith(failure: Some(failure))),
      (_) {},
    );
  }

  Future<void> addQuickGrocery(String name, GroceryDueCategory category) async {
    await _addQuickGroceryUseCase.execute(name, category);
    // stream auto-updates the list
  }

  Future<void> deleteGrocery(UniqueId id) async {
    final result = await _deleteItemUseCase.execute(id);
    result.fold(
      (failure) => emit(state.copyWith(failure: Some(failure))),
      (_) {}, // stream handles the removal
    );
  }

  @override
  Future<void> close() {
    _itemsSubscription?.cancel();
    return super.close();
  }
}
