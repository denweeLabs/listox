import 'package:listox/core/groceries/data/model/grocery_template_dto.dart';

abstract class GroceryTemplatesLocalSource {
  List<GroceryTemplateDto> getCustomItems();
  Future<void> storeCustomItem(GroceryTemplateDto item);
}
