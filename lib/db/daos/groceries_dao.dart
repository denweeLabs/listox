import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/db/database.dart';
import 'package:listox/db/tables/groceries_table.dart';

part 'groceries_dao.g.dart';

@LazySingleton()
@DriftAccessor(tables: [GroceriesTable])
class GroceriesDao extends DatabaseAccessor<AppLocalDatabase> with _$GroceriesDaoMixin {
  GroceriesDao(super.db);

  Future<List<GroceriesTableData>> getAllItems() => select(groceriesTable).get();

  Stream<List<GroceriesTableData>> watchAllItems() => select(groceriesTable).watch();

  Future<int> insertItem(GroceriesTableCompanion item) =>
      into(groceriesTable).insert(item);

  Future<bool> updateGrocery(GroceriesTableCompanion item) =>
      update(groceriesTable).replace(item);

  Future<int> deleteGrocery(String id) =>
      (delete(groceriesTable)..where((t) => t.id.equals(id))).go();

  Future<int> deleteAll() => delete(groceriesTable).go();

  Future<GroceriesTableData?> getItemById(String id) =>
      (select(groceriesTable)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<int> clearAllSelections() =>
      (update(groceriesTable)..where((t) => t.isSelected.equals(true))).write(
        const GroceriesTableCompanion(
          isSelected: Value(false),
          selectedQuantity: Value(1),
        ),
      );
}
