import 'package:injectable/injectable.dart';
import 'package:listox/core/shopping_pattern/data/model/shopping_pattern_dto.dart';
import 'package:listox/core/shopping_pattern/domain/entity/shopping_pattern.dart';
import 'package:listox/core/shopping_pattern/domain/repo/shopping_pattern_repo.dart';
import 'package:listox/core/shopping_pattern/domain/source/shopping_pattern_local_source.dart';

@LazySingleton(as: ShoppingPatternRepo)
class ShoppingPatternRepoImpl implements ShoppingPatternRepo {
  final ShoppingPatternLocalSource _source;

  ShoppingPatternRepoImpl(this._source);

  @override
  ShoppingPattern getLocal() {
    final dto = _source.get();
    return dto?.toDomain() ?? ShoppingPattern.initial();
  }

  @override
  Future<void> storeLocal(ShoppingPattern pattern) async {
    await _source.store(ShoppingPatternDto.fromDomain(pattern));
  }
}
