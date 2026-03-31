import 'package:dartz/dartz.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_category.dart';
import 'package:app_core/app_core.dart';

/// Data Transfer Object mapping between Drift row and domain entity.
/// Mapping flow: Drift row → DTO → Entity
class GroceryDto {
  final String id;
  final String name;
  final double consumptionPeriodDays;
  final DateTime? lastPurchasedDate;
  final int quantity;
  final String icon;
  final int? purchaseOrder;
  final String templateId;
  final String templateCategoryId;
  final String templateCategoryName;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isQuickAdd;
  final String? quickAddCategory;
  final bool isSelected;
  final int selectedQuantity;
  final int purchaseCount;

  const GroceryDto({
    required this.id,
    required this.name,
    required this.consumptionPeriodDays,
    this.lastPurchasedDate,
    required this.quantity,
    required this.icon,
    this.purchaseOrder,
    required this.templateId,
    required this.templateCategoryId,
    required this.templateCategoryName,
    required this.createdAt,
    required this.updatedAt,
    this.isQuickAdd = false,
    this.quickAddCategory,
    this.isSelected = false,
    this.selectedQuantity = 1,
    this.purchaseCount = 0,
  });

  Grocery toEntity() {
    return Grocery(
      id: UniqueId.fromValue(id),
      name: name,
      consumptionPeriodDays: consumptionPeriodDays,
      lastPurchasedDate: lastPurchasedDate != null
          ? Some(lastPurchasedDate!)
          : const None(),
      quantity: quantity,
      icon: icon,
      purchaseOrder: purchaseOrder != null ? Some(purchaseOrder!) : const None(),
      templateId: UniqueId.fromValue(templateId),
      templateCategory: GroceryCategory(
        id: UniqueId.fromValue(templateCategoryId),
        name: templateCategoryName,
      ),
      createdAt: createdAt,
      updatedAt: updatedAt,
      isQuickAdd: isQuickAdd,
      quickAddCategory: _parseCategory(quickAddCategory),
      isSelected: isSelected,
      selectedQuantity: selectedQuantity,
      purchaseCount: purchaseCount,
    );
  }

  factory GroceryDto.fromEntity(Grocery entity) {
    return GroceryDto(
      id: entity.id.value,
      name: entity.name,
      consumptionPeriodDays: entity.consumptionPeriodDays,
      lastPurchasedDate: entity.lastPurchasedDate.toNullable(),
      quantity: entity.quantity,
      icon: entity.icon,
      purchaseOrder: entity.purchaseOrder.toNullable(),
      templateId: entity.templateId.value,
      templateCategoryId: entity.templateCategory.id.value,
      templateCategoryName: entity.templateCategory.name,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      isQuickAdd: entity.isQuickAdd,
      quickAddCategory: entity.quickAddCategory?.name,
      isSelected: entity.isSelected,
      selectedQuantity: entity.selectedQuantity,
      purchaseCount: entity.purchaseCount,
    );
  }

  static GroceryDueCategory? _parseCategory(String? s) {
    if (s == null) return null;
    switch (s) {
      case 'thisWeek': return GroceryDueCategory.thisWeek;
      case 'later': return GroceryDueCategory.later;
      default: return null;
    }
  }
}
