// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreferencesDto _$UserPreferencesDtoFromJson(Map<String, dynamic> json) =>
    UserPreferencesDto(
      notificationTime: json['notification_time'] as String,
      notificationsEnabled: json['notifications_enabled'] as bool,
      languageCode: json['language_code'] as String,
      themeMode: json['theme_mode'] as String,
      themeColorationId: json['theme_coloration_id'] as String,
      isHapticsEnabled: json['haptics_enabled'] as bool,
      notificationMode: json['notification_mode'] as String? ?? 'auto',
      manualNotificationDays:
          (json['manual_notification_days'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserPreferencesDtoToJson(UserPreferencesDto instance) =>
    <String, dynamic>{
      'notification_time': instance.notificationTime,
      'notifications_enabled': instance.notificationsEnabled,
      'language_code': instance.languageCode,
      'theme_mode': instance.themeMode,
      'theme_coloration_id': instance.themeColorationId,
      'haptics_enabled': instance.isHapticsEnabled,
      'notification_mode': instance.notificationMode,
      'manual_notification_days': instance.manualNotificationDays,
    };
