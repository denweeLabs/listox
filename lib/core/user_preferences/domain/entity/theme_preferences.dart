import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';

part 'theme_preferences.freezed.dart';

@freezed
abstract class ThemePreferences with _$ThemePreferences {
  const factory ThemePreferences({
    required ThemeMode mode,
    required UniqueId colorationId,
  }) = _ThemePreferences;

  factory ThemePreferences.initial() {
    return ThemePreferences(
      mode: AppConstants.defaultThemeMode,
      colorationId: UniqueId.fromValue(AppConstants.defaultThemeColorationId),
    );
  }
}
