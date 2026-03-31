import 'package:dartz/dartz.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:listox/core/groceries/domain/entity/grocery_templates_result.dart';

abstract class GroceryTemplatesRepo {
  Either<GroceryFailure, GroceryTemplatesResult> getTemplatesLocal();
  Future<Either<GroceryFailure, Unit>> storeCustomItemLocal(GroceryTemplate template);
}
