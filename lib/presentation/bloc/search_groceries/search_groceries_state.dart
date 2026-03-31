part of 'search_groceries_cubit.dart';

@freezed
abstract class SearchGroceriesState with _$SearchGroceriesState {
  const factory SearchGroceriesState({
    @Default('') String query,
    @Default([]) List<GroceryTemplate> results,
    @Default(None()) Option<GroceryFailure> failure,
  }) = _SearchGroceriesState;
}
