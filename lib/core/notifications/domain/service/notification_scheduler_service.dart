import 'package:listox/core/shopping_pattern/domain/entity/shopping_pattern.dart';
import 'package:listox/core/user_preferences/domain/entity/notifications_preferences.dart';

abstract class NotificationSchedulerService {
  Future<void> initialize();
  Future<void> scheduleNotifications(NotificationsPreferences prefs, ShoppingPattern pattern);
  Future<void> cancelAllNotifications();
}
