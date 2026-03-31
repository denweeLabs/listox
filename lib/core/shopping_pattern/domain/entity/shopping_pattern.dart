import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';

part 'shopping_pattern.freezed.dart';

@freezed
abstract class ShoppingPattern with _$ShoppingPattern {
  const factory ShoppingPattern({
    @Default([]) List<DateTime> purchaseDates,
    double? averageIntervalDays,
  }) = _ShoppingPattern;

  factory ShoppingPattern.initial() => const ShoppingPattern();

  static double? computeInterval(List<DateTime> sortedDates) {
    if (sortedDates.length < AppConstants.notificationsPredictionMinPurchases) {
      return null;
    }
    final intervals = <int>[];
    for (var i = 1; i < sortedDates.length; i++) {
      intervals.add(sortedDates[i].difference(sortedDates[i - 1]).inDays);
    }
    intervals.sort();
    final mid = intervals.length ~/ 2;
    return intervals.length.isOdd
        ? intervals[mid].toDouble()
        : (intervals[mid - 1] + intervals[mid]) / 2.0;
  }
}
