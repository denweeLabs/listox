import 'package:drift/drift.dart';

class GroceriesTable extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  RealColumn get consumptionPeriodDays => real()();
  DateTimeColumn get lastPurchasedDate => dateTime().nullable()();
  IntColumn get quantity => integer().withDefault(const Constant(1))();
  TextColumn get icon => text().withDefault(const Constant(''))();
  IntColumn get purchaseOrder => integer().nullable()();
  TextColumn get templateId => text()();
  TextColumn get templateCategoryId => text()();
  TextColumn get templateCategoryName => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get isQuickAdd => boolean().withDefault(const Constant(false))();
  TextColumn get quickAddCategory => text().nullable()();
  BoolColumn get isSelected => boolean().withDefault(const Constant(false))();
  IntColumn get selectedQuantity => integer().withDefault(const Constant(1))();
  IntColumn get purchaseCount => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
