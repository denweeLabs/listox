import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_category.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/repo/grocery_repo.dart';
import 'package:app_core/app_core.dart';

@LazySingleton()
class AddQuickGroceryUseCase {
  final GroceryRepo _repo;

  const AddQuickGroceryUseCase(this._repo);

  Future<Either<GroceryFailure, Grocery>> execute(
    String name,
    GroceryDueCategory category,
  ) {
    final now = DateTime.now();
    final consumptionPeriod = category == GroceryDueCategory.thisWeek
        ? 0.0
        : 8.0;
    final grocery = Grocery(
      id: UniqueId.generate(),
      templateId: UniqueId.generate(),
      templateCategory: GroceryCategory.empty(),
      name: name,
      consumptionPeriodDays: consumptionPeriod,
      quantity: 1,
      createdAt: now,
      updatedAt: now,
      isQuickAdd: true,
      quickAddCategory: category,
    );
    return _repo.addGrocery(grocery);
  }
}
