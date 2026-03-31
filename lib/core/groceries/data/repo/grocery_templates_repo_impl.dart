import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/data/model/grocery_template_dto.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:listox/core/groceries/domain/entity/grocery_templates_result.dart';
import 'package:listox/core/groceries/domain/repo/grocery_templates_repo.dart';
import 'package:listox/core/groceries/domain/source/grocery_templates_local_source.dart';
import 'package:listox/presentation/shared/constants/groceries_constants.dart';

@LazySingleton(as: GroceryTemplatesRepo)
class GroceryTemplatesRepoImpl implements GroceryTemplatesRepo {
  final GroceryTemplatesLocalSource _localSource;

  const GroceryTemplatesRepoImpl(this._localSource);

  @override
  Either<GroceryFailure, GroceryTemplatesResult> getTemplatesLocal() {
    try {
      final customItems = (_localSource.getCustomItems()).map((e) => e.toDomain());
      final predefinedItems = kPredefinedGroceries.map((e) => e.toDomain());
      final result = GroceryTemplatesResult(
        categories: kGroceryCategories.map((e) => e.toDomain()).toList(),
        items: [...predefinedItems, ...customItems],
      );
      return Right(result);
    } catch (e) {
      return const Left(GroceryFailure.localStorage);
    }
  }

  @override
  Future<Either<GroceryFailure, Unit>> storeCustomItemLocal(GroceryTemplate template) async {
    try {
      final templateDto = GroceryTemplateDto.fromDomain(template);
      await _localSource.storeCustomItem(templateDto);
      return Right(unit);
    } catch (e) {
      return const Left(GroceryFailure.localStorage);
    }
  }
}
