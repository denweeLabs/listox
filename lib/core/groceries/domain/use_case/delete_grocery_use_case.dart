import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/repo/grocery_repo.dart';
import 'package:app_core/app_core.dart';

@LazySingleton()
class DeleteGroceryUseCase {
  final GroceryRepo _itemRepo;

  const DeleteGroceryUseCase(this._itemRepo);

  Future<Either<GroceryFailure, UniqueId>> execute(UniqueId id) {
    return _itemRepo.deleteGrocery(id);
  }
}
