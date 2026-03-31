import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/entity/grocery_templates_result.dart';
import 'package:listox/core/groceries/domain/repo/grocery_templates_repo.dart';

@LazySingleton()
class GetGroceryTemplatesUseCase {
  final GroceryTemplatesRepo _repo;

  const GetGroceryTemplatesUseCase(this._repo);

  Either<GroceryFailure, GroceryTemplatesResult> execute() {
    return _repo.getTemplatesLocal();
  }
}
