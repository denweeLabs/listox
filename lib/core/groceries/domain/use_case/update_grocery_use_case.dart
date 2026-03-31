import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/repo/grocery_repo.dart';

@LazySingleton()
class UpdateGroceryUseCase {
  final GroceryRepo _itemRepo;

  const UpdateGroceryUseCase(this._itemRepo);

  Future<Either<GroceryFailure, Grocery>> execute(Grocery item) {
    return _itemRepo.updateGrocery(item);
  }
}
