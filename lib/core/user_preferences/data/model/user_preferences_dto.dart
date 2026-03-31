import 'package:app_core/app_core.dart';
import 'package:listox/core/user_preferences/domain/entity/misc_preferences.dart';
import 'package:listox/core/user_preferences/domain/entity/notification_mode.dart';
import 'package:listox/core/user_preferences/domain/entity/notifications_preferences.dart';
import 'package:listox/core/user_preferences/domain/entity/theme_preferences.dart';
import 'package:listox/core/user_preferences/domain/entity/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences_dto.g.dart';

@JsonSerializable()
@Immutable()
class UserPreferencesDto {
  @JsonKey(name: 'notification_time') final String notificationTime;
  @JsonKey(name: 'notifications_enabled') final bool notificationsEnabled;
  @JsonKey(name: 'language_code') final String languageCode;
  @JsonKey(name: 'theme_mode') final String themeMode;
  @JsonKey(name: 'theme_coloration_id') final String themeColorationId;
  @JsonKey(name: 'haptics_enabled') final bool isHapticsEnabled;
  @JsonKey(name: 'notification_mode', defaultValue: 'auto') final String notificationMode;
  @JsonKey(name: 'manual_notification_days', defaultValue: []) final List<int> manualNotificationDays;

  const UserPreferencesDto({
    required this.notificationTime,
    required this.notificationsEnabled,
    required this.languageCode,
    required this.themeMode,
    required this.themeColorationId,
    required this.isHapticsEnabled,
    required this.notificationMode,
    required this.manualNotificationDays,
  });

  factory UserPreferencesDto.fromDomain(UserPreferences preferences) {
    final notifs = preferences.notifications;
    return UserPreferencesDto(
      notificationTime: _hhMmToString(notifs.time),
      notificationsEnabled: notifs.isEnabled,
      languageCode: preferences.language.languageCode,
      themeMode: preferences.theme.mode.name,
      themeColorationId: preferences.theme.colorationId.value,
      isHapticsEnabled: preferences.misc.isHapticsEnabled,
      notificationMode: notifs.notificationMode.name,
      manualNotificationDays: notifs.manualNotificationDays,
    );
  }

  UserPreferences toDomain() {
    final mode = NotificationMode.values.firstWhere(
      (e) => e.name == notificationMode,
      orElse: () => NotificationMode.auto,
    );

    return UserPreferences(
      language: Locale(languageCode),
      notifications: NotificationsPreferences(
        time: hhMmFromString(notificationTime),
        isEnabled: notificationsEnabled,
        notificationMode: mode,
        manualNotificationDays: manualNotificationDays,
      ),
      theme: ThemePreferences(
        mode: ThemeMode.values.firstWhere((e) => e.name == themeMode, orElse: () => ThemeMode.system),
        colorationId: UniqueId.fromValue(themeColorationId),
      ),
      misc: MiscPreferences(
        isHapticsEnabled: isHapticsEnabled,
      ),
    );
  }

  static String _hhMmToString(DateTime time) {
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');
    return '$hours:$minutes';
  }

  static DateTime hhMmFromString(String time) {
    final parts = time.split(':');
    if (parts.length < 2) {
      throw FormatException('Invalid time format. Expected "HH:mm"');
    }

    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);

    return DateTime(1970, 1, 1, hour, minute);
  }

  factory UserPreferencesDto.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserPreferencesDtoToJson(this);
}
