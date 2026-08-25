// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_pattern_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShoppingPatternDto _$ShoppingPatternDtoFromJson(Map<String, dynamic> json) =>
    ShoppingPatternDto(
      purchaseDates:
          (json['purchase_dates'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      averageIntervalDays: (json['average_interval_days'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ShoppingPatternDtoToJson(ShoppingPatternDto instance) =>
    <String, dynamic>{
      'purchase_dates': instance.purchaseDates,
      'average_interval_days': instance.averageIntervalDays,
    };
