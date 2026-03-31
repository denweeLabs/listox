import 'package:listox/core/groceries/data/model/grocery_dto.dart';

abstract class GroceryLocalSource {
  Future<List<GroceryDto>> getAllItems();
  Future<GroceryDto> addGrocery(GroceryDto item);
  Future<GroceryDto> updateGrocery(GroceryDto item);
  Future<void> deleteGrocery(String id);
  Future<void> deleteGroceries();
  Stream<List<GroceryDto>> watchAllItems();
  Future<void> clearAllSelections();
}
