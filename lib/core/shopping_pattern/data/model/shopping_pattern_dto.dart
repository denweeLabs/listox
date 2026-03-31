import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listox/core/shopping_pattern/domain/entity/shopping_pattern.dart';

part 'shopping_pattern_dto.g.dart';

@JsonSerializable()
class ShoppingPatternDto {
  @JsonKey(name: 'purchase_dates', defaultValue: []) final List<String> purchaseDates;
  @JsonKey(name: 'average_interval_days') final double? averageIntervalDays;

  const ShoppingPatternDto({
    required this.purchaseDates,
    this.averageIntervalDays,
  });

  factory ShoppingPatternDto.fromDomain(ShoppingPattern pattern) {
    return ShoppingPatternDto(
      purchaseDates: pattern.purchaseDates.map((d) => d.toIso8601String()).toList(),
      averageIntervalDays: pattern.averageIntervalDays,
    );
  }

  ShoppingPattern toDomain() {
    return ShoppingPattern(
      purchaseDates: purchaseDates.map((s) => DateTime.parse(s)).toList(),
      averageIntervalDays: averageIntervalDays,
    );
  }

  factory ShoppingPatternDto.fromJson(Map<String, dynamic> json) =>
      _$ShoppingPatternDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShoppingPatternDtoToJson(this);
}
