import 'package:app_core/app_core.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/notifications/domain/service/notification_scheduler_service.dart';
import 'package:listox/core/shopping_pattern/domain/entity/shopping_pattern.dart';
import 'package:listox/core/shopping_pattern/domain/repo/shopping_pattern_repo.dart';
import 'package:listox/core/user_preferences/domain/entity/user_preferences.dart';
import 'package:listox/core/user_preferences/domain/repo/user_preferences_repo.dart';

@LazySingleton()
class ScheduleNotificationsUseCase {
  final UserPreferencesRepo _preferencesRepo;
  final ShoppingPatternRepo _shoppingPatternRepo;
  final NotificationSchedulerService _service;

  ScheduleNotificationsUseCase(
    this._preferencesRepo,
    this._shoppingPatternRepo,
    this._service,
  );

  static const _maxStoredDates = 15;

  Future<void> execute({DateTime? newPurchaseDate}) async {
    final prefs = _preferencesRepo
        .getPrefrencesLocal()
        .foldNullableElse(onElse: UserPreferences.initial)
        .notifications;
        
    var pattern = _shoppingPatternRepo.getLocal();

    if (newPurchaseDate != null) {
      final uniqueDates = [...pattern.purchaseDates, newPurchaseDate]
        ..unique((x) => x.year + x.month + x.day);
      final trimmed = uniqueDates.length > _maxStoredDates
          ? uniqueDates.sublist(uniqueDates.length - _maxStoredDates)
          : uniqueDates;
      pattern = ShoppingPattern(
        purchaseDates: trimmed,
        averageIntervalDays: ShoppingPattern.computeInterval(trimmed),
      );
      await _shoppingPatternRepo.storeLocal(pattern);
    }

    await _service.scheduleNotifications(prefs, pattern);
  }
}
