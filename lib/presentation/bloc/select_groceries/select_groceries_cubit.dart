// ignore_for_file: unused_field

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery_category.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:listox/core/groceries/domain/use_case/add_custom_grocery_use_case.dart';
import 'package:listox/core/groceries/domain/use_case/get_categorized_groceries_use_case.dart';
import 'package:listox/core/groceries/domain/use_case/get_grocery_templates_use_case.dart';
import 'package:listox/core/groceries/domain/use_case/save_selected_groceries_use_case.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';

part 'select_groceries_state.dart';
part 'select_groceries_cubit.freezed.dart';

@Injectable()
class SelectGroceriesCubit extends Cubit<SelectGroceriesState> {
  final GetGroceryTemplatesUseCase _getGroceryTemplatesUseCase;
  final AddCustomGroceryUseCase _addCustomGroceryUseCase;
  final SaveSelectedGroceriesUseCase _saveSelectedGroceriesUseCase;
  final GetCategorizedGroceriesUseCase _getCategorizedGroceriesUseCase;

  SelectGroceriesCubit(
    @factoryParam Set<UniqueId>? selectedIds,
    this._getGroceryTemplatesUseCase,
    this._addCustomGroceryUseCase,
    this._saveSelectedGroceriesUseCase,
    this._getCategorizedGroceriesUseCase,
  ) : super(
        _initialState(
          getItems: _getGroceryTemplatesUseCase,
          selectedIds: selectedIds ?? {},
        ),
      ) {
    if (selectedIds?.isEmpty == true) {
      initSelectedGroceries();
    }
  }

  static SelectGroceriesState _initialState({
    required GetGroceryTemplatesUseCase getItems,
    required Set<UniqueId> selectedIds,
  }) {
    final items = getItems.execute();
    return items.fold(
      (failure) => SelectGroceriesState(failure: Some(failure)),
      (success) => SelectGroceriesState(
        allGroceries: success.items,
        categories: success.categories,
        selectedGroceryIds: selectedIds,
      ),
    );
  }

  void reloadItems() {
    final items = _getGroceryTemplatesUseCase.execute();
    emit(items.fold(
      (failure) => state.copyWith(failure: Some(failure)),
      (success) => state.copyWith(
        allGroceries: success.items,
        categories: success.categories,
      )),
    );
  }

  void initSelectedGroceries() async {
    final failureOrSuccess = await _getCategorizedGroceriesUseCase.execute(
      ignoreTodayPurchased: false,
    );
    emit(failureOrSuccess.fold(
      (failure) => state.copyWith(failure: Some(failure)),
      (success) => state.copyWith(
        selectedGroceryIds: success.allGroceries.values
            .where((g) => !g.isQuickAdd)
            .map((e) => e.templateId)
            .toSet(),
      ),
    ));
  }

  bool toggleGrocery(UniqueId id, {bool isPremium = false}) {
    final selected = Set<UniqueId>.from(state.selectedGroceryIds);
    if (selected.contains(id)) {
      selected.remove(id);
      emit(state.copyWith(selectedGroceryIds: selected));
      return true;
    }
    final canAdd = isPremium || state.canSelectMore;
    if (!canAdd) return false;
    selected.add(id);
    emit(state.copyWith(selectedGroceryIds: selected));
    return true;
  }

  void addCustomGrocery(GroceryTemplate item) {
    final updated = [...state.allGroceries, item];
    final selected = Set<UniqueId>.from(state.selectedGroceryIds);
    if (state.canSelectMore) {
      selected.add(item.id);
    }
    emit(state.copyWith(allGroceries: updated, selectedGroceryIds: selected));
    unawaited(_addCustomGroceryUseCase.execute(item));
  }

  void updateSelectedGroceries(Set<UniqueId> ids) {
    emit(state.copyWith(selectedGroceryIds: ids));
  }

  Future<void> confirmSelection() async {
    if (state.isConfirming) return;
    
    emit(state.copyWith(
      isConfirming: true,
      isConfirmationSuccess: false,
      failure: const None(),
    ));
    final failureOrSuccess = await _saveSelectedGroceriesUseCase.execute(
      state.selectedItems,
      state.categories,
    );
    emit(failureOrSuccess.fold(
      (failure) => state.copyWith(isConfirming: false, failure: Some(failure)),
      (success) => state.copyWith(isConfirming: false, isConfirmationSuccess: true),
    ));
  }
}
