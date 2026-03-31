import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/repo/grocery_repo.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';

@LazySingleton()
class ConfirmGroceriesPurchaseUseCase {
  final GroceryRepo _itemRepo;

  const ConfirmGroceriesPurchaseUseCase(this._itemRepo);

  Future<Either<GroceryFailure, List<Grocery>>> execute(List<Grocery> groceries) async {
    final now = DateTime.now();
    final updatedItems = <Grocery>[];

    for (var i = 0; i < groceries.length; i++) {
      final grocery = groceries[i];

      if (grocery.isQuickAdd) {
        await _itemRepo.deleteGrocery(grocery.id);
        continue;
      }

      final adaptedPeriod = _adaptToActualUsage(grocery, now);
      final effectiveDate = _effectivePurchaseDate(now, adaptedPeriod, grocery.selectedQuantity);
      final updated = grocery.copyWith(
        consumptionPeriodDays: adaptedPeriod,
        lastPurchasedDate: Some(effectiveDate),
        purchaseOrder: Some(i),
        purchaseCount: grocery.purchaseCount + 1,
        updatedAt: now,
        isSelected: false,
        selectedQuantity: 1,
      );

      final result = await _itemRepo.updateGrocery(updated);
      result.fold(
        (failure) => null,
        (updatedItem) => updatedItems.add(updatedItem),
      );
    }

    return Right(updatedItems);
  }

  /// Adapts the consumption period estimate toward real usage using an
  /// exponential moving average, capped to resist outlier events.
  ///
  /// The learning rate scales down as more purchases are recorded:
  ///   count == 0: first real interval — blends seed with actual at 0.7 rate.
  ///   count == 1: aggressive correction of the initial seed estimate.
  ///   count 2–4: early learning, still correcting but more gently.
  ///   count >= 5: stable fine-tuning of a well-calibrated estimate.
  double _adaptToActualUsage(Grocery grocery, DateTime purchasedNow) {
    final lastPurchased = grocery.lastPurchasedDate.toNullable();
    if (lastPurchased == null) return grocery.consumptionPeriodDays;

    final current = grocery.consumptionPeriodDays;
    final actualInterval = max(1, purchasedNow.difference(lastPurchased).inDays).toDouble();

    final cappedInterval = min(
      actualInterval,
      current * AppConstants.groceriesConsumptionIntervalCapMultiplier,
    );

    final purchaseCount = grocery.purchaseCount;
    final learningRate = switch (purchaseCount) {
      0 => AppConstants.groceriesConsumptionLearningRateFirst,
      1 => AppConstants.groceriesConsumptionLearningRateSecond,
      >= 2 && <= 4 => AppConstants.groceriesConsumptionLearningRateEarly,
      _ => AppConstants.groceriesConsumptionLearningRateStable,
    };

    return (current + (cappedInterval - current) * learningRate).clamp(1.0, 365.0);
  }

  /// Shifts the recorded purchase date into the future when multiple units were
  /// bought, so the next due date is naturally extended without inflating the
  /// base consumption period.
  ///
  /// qty=1 → no shift (returns [purchasedNow])
  /// qty=2 → shifts by period × 0.5 days (total due in period × 1.5)
  /// qty=3 → shifts by period × 1.5 days (total due in period × 2.5)
  DateTime _effectivePurchaseDate(DateTime purchasedNow, double period, int qty) {
    if (qty <= 1) return purchasedNow;
    final extraDays = (period * (qty - 1.5)).round();
    return purchasedNow.add(Duration(days: extraDays));
  }
}
