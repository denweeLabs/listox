import 'package:listox/core/shopping_pattern/domain/entity/shopping_pattern.dart';

abstract class ShoppingPatternRepo {
  ShoppingPattern getLocal();
  Future<void> storeLocal(ShoppingPattern pattern);
}
