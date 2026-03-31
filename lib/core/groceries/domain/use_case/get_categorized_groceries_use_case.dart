import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/repo/grocery_repo.dart';
import 'package:app_core/app_core.dart';

class CategorizedGroceries {
  final Map<UniqueId, Grocery> allGroceries;
  final List<Grocery> thisWeekGroceries;
  final List<Grocery> laterGroceries;

  const CategorizedGroceries({
    required this.allGroceries,
    required this.thisWeekGroceries,
    required this.laterGroceries,
  });

  // List<Grocery> get allGroceries {
  //   return [...thisWeekGroceries, ...laterGroceries];
  // }
}

@LazySingleton()
class GetCategorizedGroceriesUseCase {
  final GroceryRepo _groceryRepo;

  const GetCategorizedGroceriesUseCase(this._groceryRepo);

  Future<Either<GroceryFailure, CategorizedGroceries>> execute({
    bool ignoreTodayPurchased = true,
  }) async {
    final result = await _groceryRepo.getAllItems();
    return result.map(
      (items) => _categorize(items, ignoreTodayPurchased: ignoreTodayPurchased),
    );
  }

  Stream<CategorizedGroceries> watch() {
    return _groceryRepo.watchAllItems().map(_categorize);
  }

  CategorizedGroceries _categorize(
    List<Grocery> items, {
    bool ignoreTodayPurchased = true,
  }) {
    final today = DateTime.now();
    final todayOnly = DateTime(today.year, today.month, today.day);

    final thisWeek = <Grocery>[];
    final later = <Grocery>[];

    final allGroceries = <UniqueId, Grocery>{};

    for (final item in items) {
      // Hide items purchased today.
      // For quantity-shifted purchases, lastPurchasedDate is in the future, so we
      // compare the earlier of lastPurchasedDate and updatedAt against today.
      final lastPurchase = item.lastPurchasedDate.toNullable();
      if (ignoreTodayPurchased && lastPurchase != null) {
        final purchaseOnly = DateTime(lastPurchase.year, lastPurchase.month, lastPurchase.day);
        final updatedOnly = DateTime(item.updatedAt.year, item.updatedAt.month, item.updatedAt.day);
        final hideCheckDate = purchaseOnly.isBefore(updatedOnly) ? purchaseOnly : updatedOnly;
        if (hideCheckDate == todayOnly) continue;
      }

      switch (item.category) {
        case GroceryDueCategory.thisWeek:
          thisWeek.add(item);
        case GroceryDueCategory.later:
          later.add(item);
      }

      allGroceries.putIfAbsent(item.id, () => item);
    }

    int groceryComparator(Grocery a, Grocery b) {
      final aPO = a.purchaseOrder.toNullable();
      final bPO = b.purchaseOrder.toNullable();
      // Unchecked items before checked items.
      if (aPO == null && bPO != null) return -1;
      if (aPO != null && bPO == null) return 1;
      // Both checked: first selected → top (ascending timestamp).
      if (aPO != null) return aPO.compareTo(bPO!);
      // Both unchecked: ascending by consumption period.
      return a.consumptionPeriodDays.compareTo(b.consumptionPeriodDays);
    }

    thisWeek.sort(groceryComparator);
    later.sort(groceryComparator);

    return CategorizedGroceries(
      allGroceries: allGroceries,
      thisWeekGroceries: thisWeek,
      laterGroceries: later,
    );
  }
}
