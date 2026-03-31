import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app_core/app_core.dart';

part 'grocery_template.freezed.dart';

@Freezed(toJson: false, fromJson: false)
abstract class GroceryTemplate with _$GroceryTemplate implements IEntity {
  const GroceryTemplate._();
  const factory GroceryTemplate({
    required UniqueId id,
    required UniqueId categoryId,
    required String name,
    required double consumptionPeriodDays,
    required String icon,
  }) = _GroceryTemplate;

  String localizedName() {
    final isDefaultName = name.toLowerCase().startsWith('groceries.');
    if (isDefaultName) return name.tr();
    return name;
  }
}
