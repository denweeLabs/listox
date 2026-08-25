// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groceries_dao.dart';

// ignore_for_file: type=lint
mixin _$GroceriesDaoMixin on DatabaseAccessor<AppLocalDatabase> {
  $GroceriesTableTable get groceriesTable => attachedDatabase.groceriesTable;
  GroceriesDaoManager get managers => GroceriesDaoManager(this);
}

class GroceriesDaoManager {
  final _$GroceriesDaoMixin _db;
  GroceriesDaoManager(this._db);
  $$GroceriesTableTableTableManager get groceriesTable =>
      $$GroceriesTableTableTableManager(
        _db.attachedDatabase,
        _db.groceriesTable,
      );
}
