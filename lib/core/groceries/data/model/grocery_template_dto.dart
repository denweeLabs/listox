import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:app_core/app_core.dart';

part 'grocery_template_dto.g.dart';

@JsonSerializable()
@immutable
class GroceryTemplateDto {
  final String id;
  final String categoryId;
  final String name;
  final double consumptionPeriodDays;
  final String icon;

  const GroceryTemplateDto({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.consumptionPeriodDays,
    required this.icon,
  });

  factory GroceryTemplateDto.fromDomain(GroceryTemplate template) {
    return GroceryTemplateDto(
      id: template.id.value,
      categoryId: template.categoryId.value,
      consumptionPeriodDays: template.consumptionPeriodDays,
      icon: template.icon,
      name: template.name,
    );
  }

  GroceryTemplate toDomain() {
    return GroceryTemplate(
      id: UniqueId.fromValue(id),
      categoryId: UniqueId.fromValue(categoryId),
      consumptionPeriodDays: consumptionPeriodDays,
      icon: icon,
      name: name,
    );
  }

  factory GroceryTemplateDto.fromJson(Map<String, dynamic> json) =>
      _$GroceryTemplateDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GroceryTemplateDtoToJson(this);
}
