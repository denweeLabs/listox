part of 'user_preferences_cubit.dart';

@freezed
abstract class UserPreferencesState with _$UserPreferencesState {
  const factory UserPreferencesState({
    required UserPreferences preferences,
    @Default(None()) Option<PreferencesFailure> failure,
  }) = _UserPreferencesState;

  factory UserPreferencesState.initial() {
    return UserPreferencesState(
      preferences: UserPreferences.initial(),
    );
  }
}
