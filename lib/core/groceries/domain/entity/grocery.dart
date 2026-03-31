import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listox/core/groceries/domain/entity/grocery_category.dart';
import 'package:app_core/app_core.dart';

part 'grocery.freezed.dart';

enum GroceryDueCategory { thisWeek, later }

extension GroceryDueCategoryX on GroceryDueCategory {
  String preListHeader(BuildContext context) {
    switch (this) {
      case GroceryDueCategory.thisWeek: return 'Likely needed this week';
      case GroceryDueCategory.later: return 'Likely needed later';
    }
  }
}

@freezed
abstract class Grocery with _$Grocery implements IEntity {
  const Grocery._();

  const factory Grocery({
    required UniqueId id,
    required UniqueId templateId,
    required GroceryCategory templateCategory,
    required String name,
    required double consumptionPeriodDays,
    required int quantity,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default('') String icon,
    @Default(None()) Option<DateTime> lastPurchasedDate,
    @Default(None()) Option<int> purchaseOrder,
    @Default(false) bool isQuickAdd,
    @Default(null) GroceryDueCategory? quickAddCategory,
    @Default(false) bool isSelected,
    @Default(1) int selectedQuantity,
    @Default(0) int purchaseCount,
  }) = _Grocery;

  GroceryDueCategory get category {
    if (isQuickAdd && quickAddCategory != null) return quickAddCategory!;
    if (daysUntilDue <= 8) return GroceryDueCategory.thisWeek;
    return GroceryDueCategory.later;
  }

  int get daysUntilDue {
    final referenceDate = lastPurchasedDate.toNullable() ?? createdAt;
    final nextDue = referenceDate.add(Duration(days: consumptionPeriodDays.round()));
    final today = DateTime.now();

    // Strip time — compare calendar dates only
    final dueDateOnly =
        DateTime(nextDue.year, nextDue.month, nextDue.day);
    final todayOnly =
        DateTime(today.year, today.month, today.day);

    return dueDateOnly.difference(todayOnly).inDays;
  }

  String localizedName() {
    final isDefaultName = name.toLowerCase().startsWith('groceries.');
    if (isDefaultName) return name.tr();
    return name;
  }
}