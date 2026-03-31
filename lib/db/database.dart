import 'dart:io';
import 'package:listox/db/daos/groceries_dao.dart';
import 'package:listox/db/tables/groceries_table.dart';
import 'package:listox/di/di.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@LazySingleton()
@DriftDatabase(
  tables: [
    GroceriesTable,
  ],
  daos: [
    GroceriesDao,
  ],
)
class AppLocalDatabase extends _$AppLocalDatabase {
  AppLocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
      },
      onUpgrade: (m, from, to) async {
        // Migrations here. Example when switching from version 1 to 2:
        // if (from <= 1 && to >= 2) {
        //   await m.createTable(someTable);
        // }
      },
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final envPrefix = getIt<String>(instanceName: 'ENV_PREFIX');
    final file = File(p.join(dbFolder.path, '${envPrefix}db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
