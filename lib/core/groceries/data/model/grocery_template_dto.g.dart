// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_template_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroceryTemplateDto _$GroceryTemplateDtoFromJson(Map<String, dynamic> json) =>
    GroceryTemplateDto(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      name: json['name'] as String,
      consumptionPeriodDays: (json['consumptionPeriodDays'] as num).toDouble(),
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$GroceryTemplateDtoToJson(GroceryTemplateDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'consumptionPeriodDays': instance.consumptionPeriodDays,
      'icon': instance.icon,
    };
