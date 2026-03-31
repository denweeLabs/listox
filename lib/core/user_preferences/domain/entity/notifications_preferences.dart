import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listox/core/user_preferences/domain/entity/notification_mode.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';

part 'notifications_preferences.freezed.dart';

@freezed
abstract class NotificationsPreferences with _$NotificationsPreferences {
  const factory NotificationsPreferences({
    required DateTime time,
    required bool isEnabled,
    @Default(NotificationMode.auto) NotificationMode notificationMode,
    @Default([]) List<int> manualNotificationDays,
  }) = _NotificationsPreferences;

  factory NotificationsPreferences.initial() {
    return NotificationsPreferences(
      time: DateTime(
        1970,
        1,
        1,
        AppConstants.defaultNotificationTime.hour,
        AppConstants.defaultNotificationTime.minute,
      ),
      isEnabled: true,
    );
  }
}
