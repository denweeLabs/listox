import 'package:listox/core/shopping_pattern/data/model/shopping_pattern_dto.dart';

abstract class ShoppingPatternLocalSource {
  ShoppingPatternDto? get();
  Future<void> store(ShoppingPatternDto dto);
}
