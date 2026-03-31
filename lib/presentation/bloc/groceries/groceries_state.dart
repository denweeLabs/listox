part of 'groceries_cubit.dart';

@freezed
abstract class GroceriesState with _$GroceriesState {
  const GroceriesState._();

  const factory GroceriesState({
    @Default([]) List<Grocery> thisWeekItems,
    @Default([]) List<Grocery> laterItems,
    @Default(false) bool thisWeekHasHiddenItems,
    @Default(false) bool laterHasHiddenItems,
    @Default(true) bool isLoading,
    @Default(false) bool isConfirming,
    @Default(None()) Option<GroceryFailure> failure,
  }) = _GroceriesState;

  factory GroceriesState.initial() => const GroceriesState();

  Set<UniqueId> get selectedGroceryIds => {
    ...thisWeekItems.where((g) => g.isSelected).map((g) => g.id),
    ...laterItems.where((g) => g.isSelected).map((g) => g.id),
  };

  bool get hasSelectedItems => selectedGroceryIds.isNotEmpty;

  int get thisWeekUnselectedCount => thisWeekItems.where((g) => !g.isSelected).length;

  int get laterUnselectedCount => laterItems.where((g) => !g.isSelected).length;

  int get totalUnselectedCount => thisWeekUnselectedCount + laterUnselectedCount;
}
