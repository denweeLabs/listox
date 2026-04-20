part of 'select_groceries_cubit.dart';

@freezed
abstract class SelectGroceriesState with _$SelectGroceriesState {
  const SelectGroceriesState._();

  const factory SelectGroceriesState({
    @Default(false) bool isConfirming,
    @Default(false) bool isConfirmationSuccess,
    @Default([]) List<GroceryCategory> categories,
    @Default([]) List<GroceryTemplate> allGroceries,
    @Default({}) Set<UniqueId> selectedGroceryIds,
    @Default(None()) Option<GroceryFailure> failure,
  }) = _SelectGroceriesState;

  bool get canComplete => /*selectedGroceryIds.isNotEmpty*/ true;
  bool get canSelectMore => selectedGroceryIds.length < AppConstants.maxItemsSelectionCount;

  List<GroceryTemplate> groceriesForCategory(UniqueId id) =>
      allGroceries.where((i) => i.categoryId == id).toList();

  List<GroceryTemplate> get selectedItems =>
      allGroceries.where((i) => selectedGroceryIds.contains(i.id)).toList();
}
