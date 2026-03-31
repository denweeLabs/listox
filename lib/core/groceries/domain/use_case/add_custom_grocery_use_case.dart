import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:listox/core/groceries/domain/repo/grocery_templates_repo.dart';

@LazySingleton()
class AddCustomGroceryUseCase {
  final GroceryTemplatesRepo _repo;

  const AddCustomGroceryUseCase(this._repo);
  
  Future<Either<GroceryFailure, Unit>> execute(GroceryTemplate template) async {
    return _repo.storeCustomItemLocal(template);
  }
}
