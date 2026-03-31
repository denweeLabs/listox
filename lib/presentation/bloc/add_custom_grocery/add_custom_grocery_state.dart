part of 'add_custom_grocery_cubit.dart';

@freezed
abstract class AddCustomGroceryState with _$AddCustomGroceryState {
  const factory AddCustomGroceryState({
    @Default('') String selectedIcon,
    required UniqueId selectedCategoryId,
  }) = _AddCustomGroceryState;
}
