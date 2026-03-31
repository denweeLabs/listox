import 'package:dartz/dartz.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:app_core/app_core.dart';

abstract class GroceryRepo {
  Future<Either<GroceryFailure, List<Grocery>>> getAllItems();
  Future<Either<GroceryFailure, Grocery>> addGrocery(Grocery item);
  Future<Either<GroceryFailure, Grocery>> updateGrocery(Grocery item);
  Future<Either<GroceryFailure, UniqueId>> deleteGrocery(UniqueId id);
  Future<Either<GroceryFailure, Unit>> deleteGroceries();
  Stream<List<Grocery>> watchAllItems();
  Future<void> clearAllSelections();
}
