import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listox/core/groceries/domain/entity/grocery_category.dart';
import 'package:app_core/app_core.dart';

part 'grocery_category_dto.g.dart';

@JsonSerializable()
@immutable
class GroceryCategoryDto {
  final String id;
  final String name;

  const GroceryCategoryDto({
    required this.id,
    required this.name,
  });

  factory GroceryCategoryDto.fromDomain(GroceryCategory category) {
    return GroceryCategoryDto(
      id: category.id.value,
      name: category.name,
    );
  }

  GroceryCategory toDomain() {
    return GroceryCategory(
      id: UniqueId.fromValue(id),
      name: name,
    );
  }

  factory GroceryCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$GroceryCategoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GroceryCategoryDtoToJson(this);
}
