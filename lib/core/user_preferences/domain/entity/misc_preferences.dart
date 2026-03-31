import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';

part 'misc_preferences.freezed.dart';

@freezed
abstract class MiscPreferences with _$MiscPreferences {
  const factory MiscPreferences({required bool isHapticsEnabled}) =
      _MiscPreferences;

  factory MiscPreferences.initial() {
    return MiscPreferences(
      isHapticsEnabled: AppConstants.defaultHapticsEnabled,
    );
  }
}
