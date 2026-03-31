import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/data/model/grocery_dto.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/repo/grocery_repo.dart';
import 'package:listox/core/groceries/domain/source/grocery_local_source.dart';
import 'package:app_core/app_core.dart';

@LazySingleton(as: GroceryRepo)
class GroceryRepoImpl implements GroceryRepo {
  final GroceryLocalSource _localSource;

  const GroceryRepoImpl(this._localSource);

  @override
  Future<Either<GroceryFailure, List<Grocery>>> getAllItems() async {
    try {
      final dtos = await _localSource.getAllItems();
      return Right(dtos.map((dto) => dto.toEntity()).toList());
    } catch (e) {
      return const Left(GroceryFailure.localStorage);
    }
  }

  @override
  Future<Either<GroceryFailure, Grocery>> addGrocery(Grocery item) async {
    try {
      final dto = await _localSource.addGrocery(GroceryDto.fromEntity(item));
      return Right(dto.toEntity());
    } catch (e) {
      return const Left(GroceryFailure.localStorage);
    }
  }

  @override
  Future<Either<GroceryFailure, Grocery>> updateGrocery(Grocery item) async {
    try {
      final dto = await _localSource.updateGrocery(GroceryDto.fromEntity(item));
      return Right(dto.toEntity());
    } catch (e) {
      return const Left(GroceryFailure.localStorage);
    }
  }

  @override
  Future<Either<GroceryFailure, UniqueId>> deleteGrocery(UniqueId id) async {
    try {
      await _localSource.deleteGrocery(id.value);
      return Right(id);
    } catch (e) {
      return const Left(GroceryFailure.localStorage);
    }
  }

  @override
  Future<Either<GroceryFailure, Unit>> deleteGroceries() async {
    try {
      await _localSource.deleteGroceries();
      return Right(unit);
    } catch (e) {
      return const Left(GroceryFailure.localStorage);
    }
  }

  @override
  Stream<List<Grocery>> watchAllItems() {
    return _localSource.watchAllItems().map(
      (dtos) => dtos.map((dto) => dto.toEntity()).toList(),
    );
  }

  @override
  Future<void> clearAllSelections() {
    return _localSource.clearAllSelections();
  }
}
