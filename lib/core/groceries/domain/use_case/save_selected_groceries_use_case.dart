import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_category.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:listox/core/groceries/domain/repo/grocery_repo.dart';
import 'package:app_core/app_core.dart';

@LazySingleton()
class SaveSelectedGroceriesUseCase {
  final GroceryRepo _groceryRepo;

  const SaveSelectedGroceriesUseCase(this._groceryRepo);

  Future<Either<GroceryFailure, Unit>> execute(
    List<GroceryTemplate> selectedTemplates,
    List<GroceryCategory> categories,
  ) async {
    final (loadFailure, currentGroceries) = (await _groceryRepo.getAllItems()).getEntries();
    if (loadFailure != null) return Left(loadFailure);

    final now = DateTime.now();
    final categoryById = {for (final c in categories) c.id: c};
    final currentByTemplateId = {for (final g in currentGroceries!) g.templateId: g};
    final selectedTemplateIds = {for (final t in selectedTemplates) t.id};

    // Groceries in DB whose template is no longer selected → delete.
    // Quick-add items have no template and must never be touched here.
    final groceriesToDelete = currentGroceries
        .where((g) => !g.isQuickAdd && !selectedTemplateIds.contains(g.templateId))
        .toList();

    // Templates newly selected that don't yet exist in DB → insert.
    final templatesToInsert = selectedTemplates
        .where((t) => !currentByTemplateId.containsKey(t.id))
        .toList();

    for (final grocery in groceriesToDelete) {
      unawaited(_groceryRepo.deleteGrocery(grocery.id));
    }

    final insertedGroceries = <Grocery>[];
    GroceryFailure? insertError;

    for (final template in templatesToInsert) {
      final entity = Grocery(
        id: UniqueId.generate(),
        name: template.name,
        consumptionPeriodDays: template.consumptionPeriodDays,
        // lastPurchasedDate: Some(now),
        icon: template.icon,
        quantity: 1,
        templateId: template.id,
        templateCategory: categoryById[template.categoryId]!,
        createdAt: now,
        updatedAt: now,
      );

      final result = await _groceryRepo.addGrocery(entity);
      result.fold(
        (f) => insertError ??= f,
        (g) => insertedGroceries.add(g),
      );
    }

    if (insertError != null) {
      await Future.forEach(
        insertedGroceries,
        (g) => _groceryRepo.deleteGrocery(g.id),
      );
      return Left(insertError!);
    }

    return const Right(unit);
  }
}
