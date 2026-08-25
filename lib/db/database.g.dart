// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $GroceriesTableTable extends GroceriesTable
    with TableInfo<$GroceriesTableTable, GroceriesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroceriesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _consumptionPeriodDaysMeta =
      const VerificationMeta('consumptionPeriodDays');
  @override
  late final GeneratedColumn<double> consumptionPeriodDays =
      GeneratedColumn<double>(
        'consumption_period_days',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _lastPurchasedDateMeta = const VerificationMeta(
    'lastPurchasedDate',
  );
  @override
  late final GeneratedColumn<DateTime> lastPurchasedDate =
      GeneratedColumn<DateTime>(
        'last_purchased_date',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _purchaseOrderMeta = const VerificationMeta(
    'purchaseOrder',
  );
  @override
  late final GeneratedColumn<int> purchaseOrder = GeneratedColumn<int>(
    'purchase_order',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _templateIdMeta = const VerificationMeta(
    'templateId',
  );
  @override
  late final GeneratedColumn<String> templateId = GeneratedColumn<String>(
    'template_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _templateCategoryIdMeta =
      const VerificationMeta('templateCategoryId');
  @override
  late final GeneratedColumn<String> templateCategoryId =
      GeneratedColumn<String>(
        'template_category_id',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _templateCategoryNameMeta =
      const VerificationMeta('templateCategoryName');
  @override
  late final GeneratedColumn<String> templateCategoryName =
      GeneratedColumn<String>(
        'template_category_name',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isQuickAddMeta = const VerificationMeta(
    'isQuickAdd',
  );
  @override
  late final GeneratedColumn<bool> isQuickAdd = GeneratedColumn<bool>(
    'is_quick_add',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_quick_add" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _quickAddCategoryMeta = const VerificationMeta(
    'quickAddCategory',
  );
  @override
  late final GeneratedColumn<String> quickAddCategory = GeneratedColumn<String>(
    'quick_add_category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isSelectedMeta = const VerificationMeta(
    'isSelected',
  );
  @override
  late final GeneratedColumn<bool> isSelected = GeneratedColumn<bool>(
    'is_selected',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_selected" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _selectedQuantityMeta = const VerificationMeta(
    'selectedQuantity',
  );
  @override
  late final GeneratedColumn<int> selectedQuantity = GeneratedColumn<int>(
    'selected_quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _purchaseCountMeta = const VerificationMeta(
    'purchaseCount',
  );
  @override
  late final GeneratedColumn<int> purchaseCount = GeneratedColumn<int>(
    'purchase_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    consumptionPeriodDays,
    lastPurchasedDate,
    quantity,
    icon,
    purchaseOrder,
    templateId,
    templateCategoryId,
    templateCategoryName,
    createdAt,
    updatedAt,
    isQuickAdd,
    quickAddCategory,
    isSelected,
    selectedQuantity,
    purchaseCount,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'groceries_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<GroceriesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('consumption_period_days')) {
      context.handle(
        _consumptionPeriodDaysMeta,
        consumptionPeriodDays.isAcceptableOrUnknown(
          data['consumption_period_days']!,
          _consumptionPeriodDaysMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_consumptionPeriodDaysMeta);
    }
    if (data.containsKey('last_purchased_date')) {
      context.handle(
        _lastPurchasedDateMeta,
        lastPurchasedDate.isAcceptableOrUnknown(
          data['last_purchased_date']!,
          _lastPurchasedDateMeta,
        ),
      );
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('purchase_order')) {
      context.handle(
        _purchaseOrderMeta,
        purchaseOrder.isAcceptableOrUnknown(
          data['purchase_order']!,
          _purchaseOrderMeta,
        ),
      );
    }
    if (data.containsKey('template_id')) {
      context.handle(
        _templateIdMeta,
        templateId.isAcceptableOrUnknown(data['template_id']!, _templateIdMeta),
      );
    } else if (isInserting) {
      context.missing(_templateIdMeta);
    }
    if (data.containsKey('template_category_id')) {
      context.handle(
        _templateCategoryIdMeta,
        templateCategoryId.isAcceptableOrUnknown(
          data['template_category_id']!,
          _templateCategoryIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_templateCategoryIdMeta);
    }
    if (data.containsKey('template_category_name')) {
      context.handle(
        _templateCategoryNameMeta,
        templateCategoryName.isAcceptableOrUnknown(
          data['template_category_name']!,
          _templateCategoryNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_templateCategoryNameMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('is_quick_add')) {
      context.handle(
        _isQuickAddMeta,
        isQuickAdd.isAcceptableOrUnknown(
          data['is_quick_add']!,
          _isQuickAddMeta,
        ),
      );
    }
    if (data.containsKey('quick_add_category')) {
      context.handle(
        _quickAddCategoryMeta,
        quickAddCategory.isAcceptableOrUnknown(
          data['quick_add_category']!,
          _quickAddCategoryMeta,
        ),
      );
    }
    if (data.containsKey('is_selected')) {
      context.handle(
        _isSelectedMeta,
        isSelected.isAcceptableOrUnknown(data['is_selected']!, _isSelectedMeta),
      );
    }
    if (data.containsKey('selected_quantity')) {
      context.handle(
        _selectedQuantityMeta,
        selectedQuantity.isAcceptableOrUnknown(
          data['selected_quantity']!,
          _selectedQuantityMeta,
        ),
      );
    }
    if (data.containsKey('purchase_count')) {
      context.handle(
        _purchaseCountMeta,
        purchaseCount.isAcceptableOrUnknown(
          data['purchase_count']!,
          _purchaseCountMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GroceriesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GroceriesTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      consumptionPeriodDays: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}consumption_period_days'],
      )!,
      lastPurchasedDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_purchased_date'],
      ),
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      )!,
      purchaseOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}purchase_order'],
      ),
      templateId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}template_id'],
      )!,
      templateCategoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}template_category_id'],
      )!,
      templateCategoryName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}template_category_name'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      isQuickAdd: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_quick_add'],
      )!,
      quickAddCategory: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}quick_add_category'],
      ),
      isSelected: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_selected'],
      )!,
      selectedQuantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}selected_quantity'],
      )!,
      purchaseCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}purchase_count'],
      )!,
    );
  }

  @override
  $GroceriesTableTable createAlias(String alias) {
    return $GroceriesTableTable(attachedDatabase, alias);
  }
}

class GroceriesTableData extends DataClass
    implements Insertable<GroceriesTableData> {
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
  const GroceriesTableData({
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
    required this.isQuickAdd,
    this.quickAddCategory,
    required this.isSelected,
    required this.selectedQuantity,
    required this.purchaseCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['consumption_period_days'] = Variable<double>(consumptionPeriodDays);
    if (!nullToAbsent || lastPurchasedDate != null) {
      map['last_purchased_date'] = Variable<DateTime>(lastPurchasedDate);
    }
    map['quantity'] = Variable<int>(quantity);
    map['icon'] = Variable<String>(icon);
    if (!nullToAbsent || purchaseOrder != null) {
      map['purchase_order'] = Variable<int>(purchaseOrder);
    }
    map['template_id'] = Variable<String>(templateId);
    map['template_category_id'] = Variable<String>(templateCategoryId);
    map['template_category_name'] = Variable<String>(templateCategoryName);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['is_quick_add'] = Variable<bool>(isQuickAdd);
    if (!nullToAbsent || quickAddCategory != null) {
      map['quick_add_category'] = Variable<String>(quickAddCategory);
    }
    map['is_selected'] = Variable<bool>(isSelected);
    map['selected_quantity'] = Variable<int>(selectedQuantity);
    map['purchase_count'] = Variable<int>(purchaseCount);
    return map;
  }

  GroceriesTableCompanion toCompanion(bool nullToAbsent) {
    return GroceriesTableCompanion(
      id: Value(id),
      name: Value(name),
      consumptionPeriodDays: Value(consumptionPeriodDays),
      lastPurchasedDate: lastPurchasedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastPurchasedDate),
      quantity: Value(quantity),
      icon: Value(icon),
      purchaseOrder: purchaseOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(purchaseOrder),
      templateId: Value(templateId),
      templateCategoryId: Value(templateCategoryId),
      templateCategoryName: Value(templateCategoryName),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isQuickAdd: Value(isQuickAdd),
      quickAddCategory: quickAddCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(quickAddCategory),
      isSelected: Value(isSelected),
      selectedQuantity: Value(selectedQuantity),
      purchaseCount: Value(purchaseCount),
    );
  }

  factory GroceriesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GroceriesTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      consumptionPeriodDays: serializer.fromJson<double>(
        json['consumptionPeriodDays'],
      ),
      lastPurchasedDate: serializer.fromJson<DateTime?>(
        json['lastPurchasedDate'],
      ),
      quantity: serializer.fromJson<int>(json['quantity']),
      icon: serializer.fromJson<String>(json['icon']),
      purchaseOrder: serializer.fromJson<int?>(json['purchaseOrder']),
      templateId: serializer.fromJson<String>(json['templateId']),
      templateCategoryId: serializer.fromJson<String>(
        json['templateCategoryId'],
      ),
      templateCategoryName: serializer.fromJson<String>(
        json['templateCategoryName'],
      ),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      isQuickAdd: serializer.fromJson<bool>(json['isQuickAdd']),
      quickAddCategory: serializer.fromJson<String?>(json['quickAddCategory']),
      isSelected: serializer.fromJson<bool>(json['isSelected']),
      selectedQuantity: serializer.fromJson<int>(json['selectedQuantity']),
      purchaseCount: serializer.fromJson<int>(json['purchaseCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'consumptionPeriodDays': serializer.toJson<double>(consumptionPeriodDays),
      'lastPurchasedDate': serializer.toJson<DateTime?>(lastPurchasedDate),
      'quantity': serializer.toJson<int>(quantity),
      'icon': serializer.toJson<String>(icon),
      'purchaseOrder': serializer.toJson<int?>(purchaseOrder),
      'templateId': serializer.toJson<String>(templateId),
      'templateCategoryId': serializer.toJson<String>(templateCategoryId),
      'templateCategoryName': serializer.toJson<String>(templateCategoryName),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'isQuickAdd': serializer.toJson<bool>(isQuickAdd),
      'quickAddCategory': serializer.toJson<String?>(quickAddCategory),
      'isSelected': serializer.toJson<bool>(isSelected),
      'selectedQuantity': serializer.toJson<int>(selectedQuantity),
      'purchaseCount': serializer.toJson<int>(purchaseCount),
    };
  }

  GroceriesTableData copyWith({
    String? id,
    String? name,
    double? consumptionPeriodDays,
    Value<DateTime?> lastPurchasedDate = const Value.absent(),
    int? quantity,
    String? icon,
    Value<int?> purchaseOrder = const Value.absent(),
    String? templateId,
    String? templateCategoryId,
    String? templateCategoryName,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isQuickAdd,
    Value<String?> quickAddCategory = const Value.absent(),
    bool? isSelected,
    int? selectedQuantity,
    int? purchaseCount,
  }) => GroceriesTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    consumptionPeriodDays: consumptionPeriodDays ?? this.consumptionPeriodDays,
    lastPurchasedDate: lastPurchasedDate.present
        ? lastPurchasedDate.value
        : this.lastPurchasedDate,
    quantity: quantity ?? this.quantity,
    icon: icon ?? this.icon,
    purchaseOrder: purchaseOrder.present
        ? purchaseOrder.value
        : this.purchaseOrder,
    templateId: templateId ?? this.templateId,
    templateCategoryId: templateCategoryId ?? this.templateCategoryId,
    templateCategoryName: templateCategoryName ?? this.templateCategoryName,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    isQuickAdd: isQuickAdd ?? this.isQuickAdd,
    quickAddCategory: quickAddCategory.present
        ? quickAddCategory.value
        : this.quickAddCategory,
    isSelected: isSelected ?? this.isSelected,
    selectedQuantity: selectedQuantity ?? this.selectedQuantity,
    purchaseCount: purchaseCount ?? this.purchaseCount,
  );
  GroceriesTableData copyWithCompanion(GroceriesTableCompanion data) {
    return GroceriesTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      consumptionPeriodDays: data.consumptionPeriodDays.present
          ? data.consumptionPeriodDays.value
          : this.consumptionPeriodDays,
      lastPurchasedDate: data.lastPurchasedDate.present
          ? data.lastPurchasedDate.value
          : this.lastPurchasedDate,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      icon: data.icon.present ? data.icon.value : this.icon,
      purchaseOrder: data.purchaseOrder.present
          ? data.purchaseOrder.value
          : this.purchaseOrder,
      templateId: data.templateId.present
          ? data.templateId.value
          : this.templateId,
      templateCategoryId: data.templateCategoryId.present
          ? data.templateCategoryId.value
          : this.templateCategoryId,
      templateCategoryName: data.templateCategoryName.present
          ? data.templateCategoryName.value
          : this.templateCategoryName,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      isQuickAdd: data.isQuickAdd.present
          ? data.isQuickAdd.value
          : this.isQuickAdd,
      quickAddCategory: data.quickAddCategory.present
          ? data.quickAddCategory.value
          : this.quickAddCategory,
      isSelected: data.isSelected.present
          ? data.isSelected.value
          : this.isSelected,
      selectedQuantity: data.selectedQuantity.present
          ? data.selectedQuantity.value
          : this.selectedQuantity,
      purchaseCount: data.purchaseCount.present
          ? data.purchaseCount.value
          : this.purchaseCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GroceriesTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('consumptionPeriodDays: $consumptionPeriodDays, ')
          ..write('lastPurchasedDate: $lastPurchasedDate, ')
          ..write('quantity: $quantity, ')
          ..write('icon: $icon, ')
          ..write('purchaseOrder: $purchaseOrder, ')
          ..write('templateId: $templateId, ')
          ..write('templateCategoryId: $templateCategoryId, ')
          ..write('templateCategoryName: $templateCategoryName, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isQuickAdd: $isQuickAdd, ')
          ..write('quickAddCategory: $quickAddCategory, ')
          ..write('isSelected: $isSelected, ')
          ..write('selectedQuantity: $selectedQuantity, ')
          ..write('purchaseCount: $purchaseCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    consumptionPeriodDays,
    lastPurchasedDate,
    quantity,
    icon,
    purchaseOrder,
    templateId,
    templateCategoryId,
    templateCategoryName,
    createdAt,
    updatedAt,
    isQuickAdd,
    quickAddCategory,
    isSelected,
    selectedQuantity,
    purchaseCount,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GroceriesTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.consumptionPeriodDays == this.consumptionPeriodDays &&
          other.lastPurchasedDate == this.lastPurchasedDate &&
          other.quantity == this.quantity &&
          other.icon == this.icon &&
          other.purchaseOrder == this.purchaseOrder &&
          other.templateId == this.templateId &&
          other.templateCategoryId == this.templateCategoryId &&
          other.templateCategoryName == this.templateCategoryName &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.isQuickAdd == this.isQuickAdd &&
          other.quickAddCategory == this.quickAddCategory &&
          other.isSelected == this.isSelected &&
          other.selectedQuantity == this.selectedQuantity &&
          other.purchaseCount == this.purchaseCount);
}

class GroceriesTableCompanion extends UpdateCompanion<GroceriesTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<double> consumptionPeriodDays;
  final Value<DateTime?> lastPurchasedDate;
  final Value<int> quantity;
  final Value<String> icon;
  final Value<int?> purchaseOrder;
  final Value<String> templateId;
  final Value<String> templateCategoryId;
  final Value<String> templateCategoryName;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> isQuickAdd;
  final Value<String?> quickAddCategory;
  final Value<bool> isSelected;
  final Value<int> selectedQuantity;
  final Value<int> purchaseCount;
  final Value<int> rowid;
  const GroceriesTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.consumptionPeriodDays = const Value.absent(),
    this.lastPurchasedDate = const Value.absent(),
    this.quantity = const Value.absent(),
    this.icon = const Value.absent(),
    this.purchaseOrder = const Value.absent(),
    this.templateId = const Value.absent(),
    this.templateCategoryId = const Value.absent(),
    this.templateCategoryName = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isQuickAdd = const Value.absent(),
    this.quickAddCategory = const Value.absent(),
    this.isSelected = const Value.absent(),
    this.selectedQuantity = const Value.absent(),
    this.purchaseCount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GroceriesTableCompanion.insert({
    required String id,
    required String name,
    required double consumptionPeriodDays,
    this.lastPurchasedDate = const Value.absent(),
    this.quantity = const Value.absent(),
    this.icon = const Value.absent(),
    this.purchaseOrder = const Value.absent(),
    required String templateId,
    required String templateCategoryId,
    required String templateCategoryName,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.isQuickAdd = const Value.absent(),
    this.quickAddCategory = const Value.absent(),
    this.isSelected = const Value.absent(),
    this.selectedQuantity = const Value.absent(),
    this.purchaseCount = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       consumptionPeriodDays = Value(consumptionPeriodDays),
       templateId = Value(templateId),
       templateCategoryId = Value(templateCategoryId),
       templateCategoryName = Value(templateCategoryName),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<GroceriesTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<double>? consumptionPeriodDays,
    Expression<DateTime>? lastPurchasedDate,
    Expression<int>? quantity,
    Expression<String>? icon,
    Expression<int>? purchaseOrder,
    Expression<String>? templateId,
    Expression<String>? templateCategoryId,
    Expression<String>? templateCategoryName,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? isQuickAdd,
    Expression<String>? quickAddCategory,
    Expression<bool>? isSelected,
    Expression<int>? selectedQuantity,
    Expression<int>? purchaseCount,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (consumptionPeriodDays != null)
        'consumption_period_days': consumptionPeriodDays,
      if (lastPurchasedDate != null) 'last_purchased_date': lastPurchasedDate,
      if (quantity != null) 'quantity': quantity,
      if (icon != null) 'icon': icon,
      if (purchaseOrder != null) 'purchase_order': purchaseOrder,
      if (templateId != null) 'template_id': templateId,
      if (templateCategoryId != null)
        'template_category_id': templateCategoryId,
      if (templateCategoryName != null)
        'template_category_name': templateCategoryName,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (isQuickAdd != null) 'is_quick_add': isQuickAdd,
      if (quickAddCategory != null) 'quick_add_category': quickAddCategory,
      if (isSelected != null) 'is_selected': isSelected,
      if (selectedQuantity != null) 'selected_quantity': selectedQuantity,
      if (purchaseCount != null) 'purchase_count': purchaseCount,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GroceriesTableCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<double>? consumptionPeriodDays,
    Value<DateTime?>? lastPurchasedDate,
    Value<int>? quantity,
    Value<String>? icon,
    Value<int?>? purchaseOrder,
    Value<String>? templateId,
    Value<String>? templateCategoryId,
    Value<String>? templateCategoryName,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<bool>? isQuickAdd,
    Value<String?>? quickAddCategory,
    Value<bool>? isSelected,
    Value<int>? selectedQuantity,
    Value<int>? purchaseCount,
    Value<int>? rowid,
  }) {
    return GroceriesTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      consumptionPeriodDays:
          consumptionPeriodDays ?? this.consumptionPeriodDays,
      lastPurchasedDate: lastPurchasedDate ?? this.lastPurchasedDate,
      quantity: quantity ?? this.quantity,
      icon: icon ?? this.icon,
      purchaseOrder: purchaseOrder ?? this.purchaseOrder,
      templateId: templateId ?? this.templateId,
      templateCategoryId: templateCategoryId ?? this.templateCategoryId,
      templateCategoryName: templateCategoryName ?? this.templateCategoryName,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isQuickAdd: isQuickAdd ?? this.isQuickAdd,
      quickAddCategory: quickAddCategory ?? this.quickAddCategory,
      isSelected: isSelected ?? this.isSelected,
      selectedQuantity: selectedQuantity ?? this.selectedQuantity,
      purchaseCount: purchaseCount ?? this.purchaseCount,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (consumptionPeriodDays.present) {
      map['consumption_period_days'] = Variable<double>(
        consumptionPeriodDays.value,
      );
    }
    if (lastPurchasedDate.present) {
      map['last_purchased_date'] = Variable<DateTime>(lastPurchasedDate.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (purchaseOrder.present) {
      map['purchase_order'] = Variable<int>(purchaseOrder.value);
    }
    if (templateId.present) {
      map['template_id'] = Variable<String>(templateId.value);
    }
    if (templateCategoryId.present) {
      map['template_category_id'] = Variable<String>(templateCategoryId.value);
    }
    if (templateCategoryName.present) {
      map['template_category_name'] = Variable<String>(
        templateCategoryName.value,
      );
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (isQuickAdd.present) {
      map['is_quick_add'] = Variable<bool>(isQuickAdd.value);
    }
    if (quickAddCategory.present) {
      map['quick_add_category'] = Variable<String>(quickAddCategory.value);
    }
    if (isSelected.present) {
      map['is_selected'] = Variable<bool>(isSelected.value);
    }
    if (selectedQuantity.present) {
      map['selected_quantity'] = Variable<int>(selectedQuantity.value);
    }
    if (purchaseCount.present) {
      map['purchase_count'] = Variable<int>(purchaseCount.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroceriesTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('consumptionPeriodDays: $consumptionPeriodDays, ')
          ..write('lastPurchasedDate: $lastPurchasedDate, ')
          ..write('quantity: $quantity, ')
          ..write('icon: $icon, ')
          ..write('purchaseOrder: $purchaseOrder, ')
          ..write('templateId: $templateId, ')
          ..write('templateCategoryId: $templateCategoryId, ')
          ..write('templateCategoryName: $templateCategoryName, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isQuickAdd: $isQuickAdd, ')
          ..write('quickAddCategory: $quickAddCategory, ')
          ..write('isSelected: $isSelected, ')
          ..write('selectedQuantity: $selectedQuantity, ')
          ..write('purchaseCount: $purchaseCount, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppLocalDatabase extends GeneratedDatabase {
  _$AppLocalDatabase(QueryExecutor e) : super(e);
  $AppLocalDatabaseManager get managers => $AppLocalDatabaseManager(this);
  late final $GroceriesTableTable groceriesTable = $GroceriesTableTable(this);
  late final GroceriesDao groceriesDao = GroceriesDao(this as AppLocalDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [groceriesTable];
}

typedef $$GroceriesTableTableCreateCompanionBuilder =
    GroceriesTableCompanion Function({
      required String id,
      required String name,
      required double consumptionPeriodDays,
      Value<DateTime?> lastPurchasedDate,
      Value<int> quantity,
      Value<String> icon,
      Value<int?> purchaseOrder,
      required String templateId,
      required String templateCategoryId,
      required String templateCategoryName,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<bool> isQuickAdd,
      Value<String?> quickAddCategory,
      Value<bool> isSelected,
      Value<int> selectedQuantity,
      Value<int> purchaseCount,
      Value<int> rowid,
    });
typedef $$GroceriesTableTableUpdateCompanionBuilder =
    GroceriesTableCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<double> consumptionPeriodDays,
      Value<DateTime?> lastPurchasedDate,
      Value<int> quantity,
      Value<String> icon,
      Value<int?> purchaseOrder,
      Value<String> templateId,
      Value<String> templateCategoryId,
      Value<String> templateCategoryName,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<bool> isQuickAdd,
      Value<String?> quickAddCategory,
      Value<bool> isSelected,
      Value<int> selectedQuantity,
      Value<int> purchaseCount,
      Value<int> rowid,
    });

class $$GroceriesTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $GroceriesTableTable> {
  $$GroceriesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get consumptionPeriodDays => $composableBuilder(
    column: $table.consumptionPeriodDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastPurchasedDate => $composableBuilder(
    column: $table.lastPurchasedDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get purchaseOrder => $composableBuilder(
    column: $table.purchaseOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get templateId => $composableBuilder(
    column: $table.templateId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get templateCategoryId => $composableBuilder(
    column: $table.templateCategoryId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get templateCategoryName => $composableBuilder(
    column: $table.templateCategoryName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isQuickAdd => $composableBuilder(
    column: $table.isQuickAdd,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get quickAddCategory => $composableBuilder(
    column: $table.quickAddCategory,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSelected => $composableBuilder(
    column: $table.isSelected,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get selectedQuantity => $composableBuilder(
    column: $table.selectedQuantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get purchaseCount => $composableBuilder(
    column: $table.purchaseCount,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GroceriesTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $GroceriesTableTable> {
  $$GroceriesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get consumptionPeriodDays => $composableBuilder(
    column: $table.consumptionPeriodDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastPurchasedDate => $composableBuilder(
    column: $table.lastPurchasedDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get purchaseOrder => $composableBuilder(
    column: $table.purchaseOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get templateId => $composableBuilder(
    column: $table.templateId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get templateCategoryId => $composableBuilder(
    column: $table.templateCategoryId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get templateCategoryName => $composableBuilder(
    column: $table.templateCategoryName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isQuickAdd => $composableBuilder(
    column: $table.isQuickAdd,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get quickAddCategory => $composableBuilder(
    column: $table.quickAddCategory,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSelected => $composableBuilder(
    column: $table.isSelected,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get selectedQuantity => $composableBuilder(
    column: $table.selectedQuantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get purchaseCount => $composableBuilder(
    column: $table.purchaseCount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GroceriesTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $GroceriesTableTable> {
  $$GroceriesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get consumptionPeriodDays => $composableBuilder(
    column: $table.consumptionPeriodDays,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastPurchasedDate => $composableBuilder(
    column: $table.lastPurchasedDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<int> get purchaseOrder => $composableBuilder(
    column: $table.purchaseOrder,
    builder: (column) => column,
  );

  GeneratedColumn<String> get templateId => $composableBuilder(
    column: $table.templateId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get templateCategoryId => $composableBuilder(
    column: $table.templateCategoryId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get templateCategoryName => $composableBuilder(
    column: $table.templateCategoryName,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get isQuickAdd => $composableBuilder(
    column: $table.isQuickAdd,
    builder: (column) => column,
  );

  GeneratedColumn<String> get quickAddCategory => $composableBuilder(
    column: $table.quickAddCategory,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isSelected => $composableBuilder(
    column: $table.isSelected,
    builder: (column) => column,
  );

  GeneratedColumn<int> get selectedQuantity => $composableBuilder(
    column: $table.selectedQuantity,
    builder: (column) => column,
  );

  GeneratedColumn<int> get purchaseCount => $composableBuilder(
    column: $table.purchaseCount,
    builder: (column) => column,
  );
}

class $$GroceriesTableTableTableManager
    extends
        RootTableManager<
          _$AppLocalDatabase,
          $GroceriesTableTable,
          GroceriesTableData,
          $$GroceriesTableTableFilterComposer,
          $$GroceriesTableTableOrderingComposer,
          $$GroceriesTableTableAnnotationComposer,
          $$GroceriesTableTableCreateCompanionBuilder,
          $$GroceriesTableTableUpdateCompanionBuilder,
          (
            GroceriesTableData,
            BaseReferences<
              _$AppLocalDatabase,
              $GroceriesTableTable,
              GroceriesTableData
            >,
          ),
          GroceriesTableData,
          PrefetchHooks Function()
        > {
  $$GroceriesTableTableTableManager(
    _$AppLocalDatabase db,
    $GroceriesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GroceriesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GroceriesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GroceriesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<double> consumptionPeriodDays = const Value.absent(),
                Value<DateTime?> lastPurchasedDate = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<String> icon = const Value.absent(),
                Value<int?> purchaseOrder = const Value.absent(),
                Value<String> templateId = const Value.absent(),
                Value<String> templateCategoryId = const Value.absent(),
                Value<String> templateCategoryName = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<bool> isQuickAdd = const Value.absent(),
                Value<String?> quickAddCategory = const Value.absent(),
                Value<bool> isSelected = const Value.absent(),
                Value<int> selectedQuantity = const Value.absent(),
                Value<int> purchaseCount = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GroceriesTableCompanion(
                id: id,
                name: name,
                consumptionPeriodDays: consumptionPeriodDays,
                lastPurchasedDate: lastPurchasedDate,
                quantity: quantity,
                icon: icon,
                purchaseOrder: purchaseOrder,
                templateId: templateId,
                templateCategoryId: templateCategoryId,
                templateCategoryName: templateCategoryName,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isQuickAdd: isQuickAdd,
                quickAddCategory: quickAddCategory,
                isSelected: isSelected,
                selectedQuantity: selectedQuantity,
                purchaseCount: purchaseCount,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required double consumptionPeriodDays,
                Value<DateTime?> lastPurchasedDate = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<String> icon = const Value.absent(),
                Value<int?> purchaseOrder = const Value.absent(),
                required String templateId,
                required String templateCategoryId,
                required String templateCategoryName,
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<bool> isQuickAdd = const Value.absent(),
                Value<String?> quickAddCategory = const Value.absent(),
                Value<bool> isSelected = const Value.absent(),
                Value<int> selectedQuantity = const Value.absent(),
                Value<int> purchaseCount = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GroceriesTableCompanion.insert(
                id: id,
                name: name,
                consumptionPeriodDays: consumptionPeriodDays,
                lastPurchasedDate: lastPurchasedDate,
                quantity: quantity,
                icon: icon,
                purchaseOrder: purchaseOrder,
                templateId: templateId,
                templateCategoryId: templateCategoryId,
                templateCategoryName: templateCategoryName,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isQuickAdd: isQuickAdd,
                quickAddCategory: quickAddCategory,
                isSelected: isSelected,
                selectedQuantity: selectedQuantity,
                purchaseCount: purchaseCount,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GroceriesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppLocalDatabase,
      $GroceriesTableTable,
      GroceriesTableData,
      $$GroceriesTableTableFilterComposer,
      $$GroceriesTableTableOrderingComposer,
      $$GroceriesTableTableAnnotationComposer,
      $$GroceriesTableTableCreateCompanionBuilder,
      $$GroceriesTableTableUpdateCompanionBuilder,
      (
        GroceriesTableData,
        BaseReferences<
          _$AppLocalDatabase,
          $GroceriesTableTable,
          GroceriesTableData
        >,
      ),
      GroceriesTableData,
      PrefetchHooks Function()
    >;

class $AppLocalDatabaseManager {
  final _$AppLocalDatabase _db;
  $AppLocalDatabaseManager(this._db);
  $$GroceriesTableTableTableManager get groceriesTable =>
      $$GroceriesTableTableTableManager(_db, _db.groceriesTable);
}
