import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/data/model/grocery_dto.dart';
import 'package:listox/core/groceries/domain/source/grocery_local_source.dart';
import 'package:listox/db/daos/groceries_dao.dart';
import 'package:listox/db/database.dart';

@LazySingleton(as: GroceryLocalSource)
class GroceryLocalSourceImpl implements GroceryLocalSource {
  final GroceriesDao _dao;

  const GroceryLocalSourceImpl(this._dao);

  @override
  Future<List<GroceryDto>> getAllItems() async {
    final rows = await _dao.getAllItems();
    return rows.map<GroceryDto>(_rowToDto).toList();
  }

  @override
  Stream<List<GroceryDto>> watchAllItems() {
    return _dao.watchAllItems().map((rows) => rows.map<GroceryDto>(_rowToDto).toList());
  }

  @override
  Future<GroceryDto> addGrocery(GroceryDto item) async {
    final companion = GroceriesTableCompanion.insert(
      id: item.id,
      name: item.name,
      consumptionPeriodDays: item.consumptionPeriodDays,
      lastPurchasedDate: Value(item.lastPurchasedDate),
      quantity: Value(item.quantity),
      icon: Value(item.icon),
      purchaseOrder: Value(item.purchaseOrder),
      templateId: item.templateId,
      templateCategoryId: item.templateCategoryId,
      templateCategoryName: item.templateCategoryName,
      createdAt: item.createdAt,
      updatedAt: item.updatedAt,
      isQuickAdd: Value(item.isQuickAdd),
      quickAddCategory: Value(item.quickAddCategory),
      isSelected: Value(item.isSelected),
      selectedQuantity: Value(item.selectedQuantity),
      purchaseCount: Value(item.purchaseCount),
    );
    await _dao.insertItem(companion);
    return item;
  }

  @override
  Future<GroceryDto> updateGrocery(GroceryDto item) async {
    final companion = GroceriesTableCompanion(
      id: Value(item.id),
      name: Value(item.name),
      consumptionPeriodDays: Value(item.consumptionPeriodDays),
      lastPurchasedDate: Value(item.lastPurchasedDate),
      quantity: Value(item.quantity),
      icon: Value(item.icon),
      purchaseOrder: Value(item.purchaseOrder),
      templateId: Value(item.templateId),
      templateCategoryId: Value(item.templateCategoryId),
      templateCategoryName: Value(item.templateCategoryName),
      createdAt: Value(item.createdAt),
      updatedAt: Value(item.updatedAt),
      isQuickAdd: Value(item.isQuickAdd),
      quickAddCategory: Value(item.quickAddCategory),
      isSelected: Value(item.isSelected),
      selectedQuantity: Value(item.selectedQuantity),
      purchaseCount: Value(item.purchaseCount),
    );
    await _dao.updateGrocery(companion);
    return item;
  }

  @override
  Future<void> deleteGrocery(String id) {
    return _dao.deleteGrocery(id);
  }

  @override
  Future<void> deleteGroceries() {
    return _dao.deleteAll();
  }

  @override
  Future<void> clearAllSelections() {
    return _dao.clearAllSelections();
  }

  GroceryDto _rowToDto(GroceriesTableData row) {
    return GroceryDto(
      id: row.id,
      name: row.name,
      consumptionPeriodDays: row.consumptionPeriodDays,
      lastPurchasedDate: row.lastPurchasedDate,
      quantity: row.quantity,
      icon: row.icon,
      purchaseOrder: row.purchaseOrder,
      templateId: row.templateId,
      templateCategoryId: row.templateCategoryId,
      templateCategoryName: row.templateCategoryName,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
      isQuickAdd: row.isQuickAdd,
      quickAddCategory: row.quickAddCategory,
      isSelected: row.isSelected,
      selectedQuantity: row.selectedQuantity,
      purchaseCount: row.purchaseCount,
    );
  }
}
