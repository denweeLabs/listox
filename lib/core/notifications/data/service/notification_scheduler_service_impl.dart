import 'dart:io';
import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/notifications/domain/service/notification_scheduler_service.dart';
import 'package:listox/core/shopping_pattern/domain/entity/shopping_pattern.dart';
import 'package:listox/core/user_preferences/domain/entity/notification_mode.dart';
import 'package:listox/core/user_preferences/domain/entity/notifications_preferences.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:flutter_timezone/flutter_timezone.dart';

@LazySingleton(as: NotificationSchedulerService)
class NotificationSchedulerServiceImpl implements NotificationSchedulerService {
  final FlutterLocalNotificationsPlugin _plugin;

  NotificationSchedulerServiceImpl(this._plugin);

  static const _channelId = 'listox_shopping_reminders';
  static const _channelName = 'Shopping Reminders';
  static const _channelDescription = 'Reminders for your shopping trips';
  static const _promptCount = 10;
  static const _androidScheduleMode = AndroidScheduleMode.inexactAllowWhileIdle;
  static const _androidInitSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
  static const _iosInitSettings = DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );

  var _isInitialized = false;

  @override
  Future<void> initialize() async {
    if (_isInitialized) return;

    tz.initializeTimeZones();
    final currentTimezone = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(currentTimezone.identifier));
    
    const initSettings = InitializationSettings(
      android: _androidInitSettings,
      iOS: _iosInitSettings,
    );

    if (Platform.isAndroid) {
      await _plugin
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
    }
    
    await _plugin.initialize(settings: initSettings);
    _isInitialized = true;
  }

  @override
  Future<void> cancelAllNotifications() async {
    await _plugin.cancelAll();
  }

  @override
  Future<void> scheduleNotifications(NotificationsPreferences prefs, ShoppingPattern pattern) async {
    debugPrint('scheduleNotifications: $prefs, $pattern');
    
    await _plugin.cancelAll();

    if (!prefs.isEnabled) return;

    if (prefs.notificationMode == NotificationMode.auto) {
      await _scheduleAutoNotifications(prefs, pattern);
    } else {
      await _scheduleManualNotifications(prefs);
    }
  }

  Future<void> _scheduleAutoNotifications(NotificationsPreferences prefs, ShoppingPattern pattern) async {
    final dates = pattern.purchaseDates;
    if (dates.length < AppConstants.notificationsPredictionMinPurchases) {
      return;
    }

    final sortedDates = List<DateTime>.from(dates)..sort();
    final intervalDays = ShoppingPattern.computeInterval(sortedDates);
    if (intervalDays == null) return;

    final lastDate = sortedDates.last;
    const notificationCount = 1;

    for (var i = 1; i <= notificationCount; i++) {
      final targetDate = lastDate.add(Duration(days: (intervalDays * i).floor()));
      final scheduledDate = _buildTZDateTime(targetDate, prefs.time);
      final isBeforeNow = scheduledDate.isBefore(tz.TZDateTime.now(tz.local));

      if (isBeforeNow) continue;

      final prompt = _randomPrompt();
      debugPrint('prompt: $prompt');
      await _plugin.zonedSchedule(
        id: i,
        title: prompt.$1,
        body: prompt.$2,
        scheduledDate: scheduledDate,
        notificationDetails: _notificationDetails(),
        androidScheduleMode: _androidScheduleMode,
      );
    }
  }

  Future<void> _scheduleManualNotifications(NotificationsPreferences prefs) async {
    final days = prefs.manualNotificationDays;
    if (days.isEmpty) return;

    for (var i = 0; i < days.length; i++) {
      final nextDate = _nextWeekdayOccurrence(days[i]);
      final scheduledDate = _buildTZDateTime(nextDate, prefs.time);
      final isBeforeNow = scheduledDate.isBefore(tz.TZDateTime.now(tz.local));

      if (isBeforeNow) continue;
      
      final prompt = _randomPrompt();
      await _plugin.zonedSchedule(
        id: 100 + i,
        title: prompt.$1,
        body: prompt.$2,
        scheduledDate: scheduledDate,
        notificationDetails: _notificationDetails(),
        androidScheduleMode: _androidScheduleMode,
        matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
      );
    }
  }

  (String, String) _randomPrompt() {
    final i = Random().nextInt(_promptCount) + 1;
    return (
      'notifications.prompts.title_$i'.tr(),
      'notifications.prompts.body_$i'.tr(),
    );
  }

  DateTime _nextWeekdayOccurrence(int weekday) {
    var current = DateTime.now();
    while (current.weekday != weekday) {
      current = current.add(const Duration(days: 1));
    }
    return current;
  }

  tz.TZDateTime _buildTZDateTime(DateTime date, DateTime time) {
    return tz.TZDateTime(
      tz.local,
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
  }

  NotificationDetails _notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        _channelId,
        _channelName,
        channelDescription: _channelDescription,
        importance: Importance.high,
        priority: Priority.high,
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );
  }
}
