import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listox/core/user_preferences/domain/entity/misc_preferences.dart';
import 'package:listox/core/user_preferences/domain/entity/notifications_preferences.dart';
import 'package:listox/core/user_preferences/domain/entity/theme_preferences.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';

part 'user_preferences.freezed.dart';

@freezed
abstract class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    required Locale language,
    required NotificationsPreferences notifications,
    required ThemePreferences theme,
    required MiscPreferences misc,
  }) = _UserPreferences;

  factory UserPreferences.initial() {
    return UserPreferences(
      language: AppConstants.fallbackLocale,
      notifications: NotificationsPreferences.initial(),
      theme: ThemePreferences.initial(),
      misc: MiscPreferences.initial(),
    );
  }
}
