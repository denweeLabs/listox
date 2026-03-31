import 'package:listox/core/groceries/domain/entity/grocery_category.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';

class GroceryTemplatesResult {
  final List<GroceryCategory> categories;
  final List<GroceryTemplate> items;

  const GroceryTemplatesResult({
    required this.categories,
    required this.items,
  });
}