import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app_core/app_core.dart';

part 'grocery_category.freezed.dart';

@freezed
abstract class GroceryCategory with _$GroceryCategory implements IEntity {
  const factory GroceryCategory({required UniqueId id, required String name}) =
      _GroceryCategory;

  factory GroceryCategory.empty() {
    return GroceryCategory(id: UniqueId.empty(), name: '');
  }
}
