// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Grocery {

 UniqueId get id; UniqueId get templateId; GroceryCategory get templateCategory; String get name; double get consumptionPeriodDays; int get quantity; DateTime get createdAt; DateTime get updatedAt; String get icon; Option<DateTime> get lastPurchasedDate; Option<int> get purchaseOrder; bool get isQuickAdd; GroceryDueCategory? get quickAddCategory; bool get isSelected; int get selectedQuantity; int get purchaseCount;
/// Create a copy of Grocery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroceryCopyWith<Grocery> get copyWith => _$GroceryCopyWithImpl<Grocery>(this as Grocery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Grocery&&(identical(other.id, id) || other.id == id)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.templateCategory, templateCategory) || other.templateCategory == templateCategory)&&(identical(other.name, name) || other.name == name)&&(identical(other.consumptionPeriodDays, consumptionPeriodDays) || other.consumptionPeriodDays == consumptionPeriodDays)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.lastPurchasedDate, lastPurchasedDate) || other.lastPurchasedDate == lastPurchasedDate)&&(identical(other.purchaseOrder, purchaseOrder) || other.purchaseOrder == purchaseOrder)&&(identical(other.isQuickAdd, isQuickAdd) || other.isQuickAdd == isQuickAdd)&&(identical(other.quickAddCategory, quickAddCategory) || other.quickAddCategory == quickAddCategory)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected)&&(identical(other.selectedQuantity, selectedQuantity) || other.selectedQuantity == selectedQuantity)&&(identical(other.purchaseCount, purchaseCount) || other.purchaseCount == purchaseCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,templateId,templateCategory,name,consumptionPeriodDays,quantity,createdAt,updatedAt,icon,lastPurchasedDate,purchaseOrder,isQuickAdd,quickAddCategory,isSelected,selectedQuantity,purchaseCount);

@override
String toString() {
  return 'Grocery(id: $id, templateId: $templateId, templateCategory: $templateCategory, name: $name, consumptionPeriodDays: $consumptionPeriodDays, quantity: $quantity, createdAt: $createdAt, updatedAt: $updatedAt, icon: $icon, lastPurchasedDate: $lastPurchasedDate, purchaseOrder: $purchaseOrder, isQuickAdd: $isQuickAdd, quickAddCategory: $quickAddCategory, isSelected: $isSelected, selectedQuantity: $selectedQuantity, purchaseCount: $purchaseCount)';
}


}

/// @nodoc
abstract mixin class $GroceryCopyWith<$Res>  {
  factory $GroceryCopyWith(Grocery value, $Res Function(Grocery) _then) = _$GroceryCopyWithImpl;
@useResult
$Res call({
 UniqueId id, UniqueId templateId, GroceryCategory templateCategory, String name, double consumptionPeriodDays, int quantity, DateTime createdAt, DateTime updatedAt, String icon, Option<DateTime> lastPurchasedDate, Option<int> purchaseOrder, bool isQuickAdd, GroceryDueCategory? quickAddCategory, bool isSelected, int selectedQuantity, int purchaseCount
});


$GroceryCategoryCopyWith<$Res> get templateCategory;

}
/// @nodoc
class _$GroceryCopyWithImpl<$Res>
    implements $GroceryCopyWith<$Res> {
  _$GroceryCopyWithImpl(this._self, this._then);

  final Grocery _self;
  final $Res Function(Grocery) _then;

/// Create a copy of Grocery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? templateId = null,Object? templateCategory = null,Object? name = null,Object? consumptionPeriodDays = null,Object? quantity = null,Object? createdAt = null,Object? updatedAt = null,Object? icon = null,Object? lastPurchasedDate = null,Object? purchaseOrder = null,Object? isQuickAdd = null,Object? quickAddCategory = freezed,Object? isSelected = null,Object? selectedQuantity = null,Object? purchaseCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as UniqueId,templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as UniqueId,templateCategory: null == templateCategory ? _self.templateCategory : templateCategory // ignore: cast_nullable_to_non_nullable
as GroceryCategory,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,consumptionPeriodDays: null == consumptionPeriodDays ? _self.consumptionPeriodDays : consumptionPeriodDays // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,lastPurchasedDate: null == lastPurchasedDate ? _self.lastPurchasedDate : lastPurchasedDate // ignore: cast_nullable_to_non_nullable
as Option<DateTime>,purchaseOrder: null == purchaseOrder ? _self.purchaseOrder : purchaseOrder // ignore: cast_nullable_to_non_nullable
as Option<int>,isQuickAdd: null == isQuickAdd ? _self.isQuickAdd : isQuickAdd // ignore: cast_nullable_to_non_nullable
as bool,quickAddCategory: freezed == quickAddCategory ? _self.quickAddCategory : quickAddCategory // ignore: cast_nullable_to_non_nullable
as GroceryDueCategory?,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,selectedQuantity: null == selectedQuantity ? _self.selectedQuantity : selectedQuantity // ignore: cast_nullable_to_non_nullable
as int,purchaseCount: null == purchaseCount ? _self.purchaseCount : purchaseCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Grocery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroceryCategoryCopyWith<$Res> get templateCategory {
  
  return $GroceryCategoryCopyWith<$Res>(_self.templateCategory, (value) {
    return _then(_self.copyWith(templateCategory: value));
  });
}
}


/// Adds pattern-matching-related methods to [Grocery].
extension GroceryPatterns on Grocery {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Grocery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Grocery() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Grocery value)  $default,){
final _that = this;
switch (_that) {
case _Grocery():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Grocery value)?  $default,){
final _that = this;
switch (_that) {
case _Grocery() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UniqueId id,  UniqueId templateId,  GroceryCategory templateCategory,  String name,  double consumptionPeriodDays,  int quantity,  DateTime createdAt,  DateTime updatedAt,  String icon,  Option<DateTime> lastPurchasedDate,  Option<int> purchaseOrder,  bool isQuickAdd,  GroceryDueCategory? quickAddCategory,  bool isSelected,  int selectedQuantity,  int purchaseCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Grocery() when $default != null:
return $default(_that.id,_that.templateId,_that.templateCategory,_that.name,_that.consumptionPeriodDays,_that.quantity,_that.createdAt,_that.updatedAt,_that.icon,_that.lastPurchasedDate,_that.purchaseOrder,_that.isQuickAdd,_that.quickAddCategory,_that.isSelected,_that.selectedQuantity,_that.purchaseCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UniqueId id,  UniqueId templateId,  GroceryCategory templateCategory,  String name,  double consumptionPeriodDays,  int quantity,  DateTime createdAt,  DateTime updatedAt,  String icon,  Option<DateTime> lastPurchasedDate,  Option<int> purchaseOrder,  bool isQuickAdd,  GroceryDueCategory? quickAddCategory,  bool isSelected,  int selectedQuantity,  int purchaseCount)  $default,) {final _that = this;
switch (_that) {
case _Grocery():
return $default(_that.id,_that.templateId,_that.templateCategory,_that.name,_that.consumptionPeriodDays,_that.quantity,_that.createdAt,_that.updatedAt,_that.icon,_that.lastPurchasedDate,_that.purchaseOrder,_that.isQuickAdd,_that.quickAddCategory,_that.isSelected,_that.selectedQuantity,_that.purchaseCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UniqueId id,  UniqueId templateId,  GroceryCategory templateCategory,  String name,  double consumptionPeriodDays,  int quantity,  DateTime createdAt,  DateTime updatedAt,  String icon,  Option<DateTime> lastPurchasedDate,  Option<int> purchaseOrder,  bool isQuickAdd,  GroceryDueCategory? quickAddCategory,  bool isSelected,  int selectedQuantity,  int purchaseCount)?  $default,) {final _that = this;
switch (_that) {
case _Grocery() when $default != null:
return $default(_that.id,_that.templateId,_that.templateCategory,_that.name,_that.consumptionPeriodDays,_that.quantity,_that.createdAt,_that.updatedAt,_that.icon,_that.lastPurchasedDate,_that.purchaseOrder,_that.isQuickAdd,_that.quickAddCategory,_that.isSelected,_that.selectedQuantity,_that.purchaseCount);case _:
  return null;

}
}

}

/// @nodoc


class _Grocery extends Grocery {
  const _Grocery({required this.id, required this.templateId, required this.templateCategory, required this.name, required this.consumptionPeriodDays, required this.quantity, required this.createdAt, required this.updatedAt, this.icon = '', this.lastPurchasedDate = const None(), this.purchaseOrder = const None(), this.isQuickAdd = false, this.quickAddCategory = null, this.isSelected = false, this.selectedQuantity = 1, this.purchaseCount = 0}): super._();
  

@override final  UniqueId id;
@override final  UniqueId templateId;
@override final  GroceryCategory templateCategory;
@override final  String name;
@override final  double consumptionPeriodDays;
@override final  int quantity;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey() final  String icon;
@override@JsonKey() final  Option<DateTime> lastPurchasedDate;
@override@JsonKey() final  Option<int> purchaseOrder;
@override@JsonKey() final  bool isQuickAdd;
@override@JsonKey() final  GroceryDueCategory? quickAddCategory;
@override@JsonKey() final  bool isSelected;
@override@JsonKey() final  int selectedQuantity;
@override@JsonKey() final  int purchaseCount;

/// Create a copy of Grocery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroceryCopyWith<_Grocery> get copyWith => __$GroceryCopyWithImpl<_Grocery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Grocery&&(identical(other.id, id) || other.id == id)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.templateCategory, templateCategory) || other.templateCategory == templateCategory)&&(identical(other.name, name) || other.name == name)&&(identical(other.consumptionPeriodDays, consumptionPeriodDays) || other.consumptionPeriodDays == consumptionPeriodDays)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.lastPurchasedDate, lastPurchasedDate) || other.lastPurchasedDate == lastPurchasedDate)&&(identical(other.purchaseOrder, purchaseOrder) || other.purchaseOrder == purchaseOrder)&&(identical(other.isQuickAdd, isQuickAdd) || other.isQuickAdd == isQuickAdd)&&(identical(other.quickAddCategory, quickAddCategory) || other.quickAddCategory == quickAddCategory)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected)&&(identical(other.selectedQuantity, selectedQuantity) || other.selectedQuantity == selectedQuantity)&&(identical(other.purchaseCount, purchaseCount) || other.purchaseCount == purchaseCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,templateId,templateCategory,name,consumptionPeriodDays,quantity,createdAt,updatedAt,icon,lastPurchasedDate,purchaseOrder,isQuickAdd,quickAddCategory,isSelected,selectedQuantity,purchaseCount);

@override
String toString() {
  return 'Grocery(id: $id, templateId: $templateId, templateCategory: $templateCategory, name: $name, consumptionPeriodDays: $consumptionPeriodDays, quantity: $quantity, createdAt: $createdAt, updatedAt: $updatedAt, icon: $icon, lastPurchasedDate: $lastPurchasedDate, purchaseOrder: $purchaseOrder, isQuickAdd: $isQuickAdd, quickAddCategory: $quickAddCategory, isSelected: $isSelected, selectedQuantity: $selectedQuantity, purchaseCount: $purchaseCount)';
}


}

/// @nodoc
abstract mixin class _$GroceryCopyWith<$Res> implements $GroceryCopyWith<$Res> {
  factory _$GroceryCopyWith(_Grocery value, $Res Function(_Grocery) _then) = __$GroceryCopyWithImpl;
@override @useResult
$Res call({
 UniqueId id, UniqueId templateId, GroceryCategory templateCategory, String name, double consumptionPeriodDays, int quantity, DateTime createdAt, DateTime updatedAt, String icon, Option<DateTime> lastPurchasedDate, Option<int> purchaseOrder, bool isQuickAdd, GroceryDueCategory? quickAddCategory, bool isSelected, int selectedQuantity, int purchaseCount
});


@override $GroceryCategoryCopyWith<$Res> get templateCategory;

}
/// @nodoc
class __$GroceryCopyWithImpl<$Res>
    implements _$GroceryCopyWith<$Res> {
  __$GroceryCopyWithImpl(this._self, this._then);

  final _Grocery _self;
  final $Res Function(_Grocery) _then;

/// Create a copy of Grocery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? templateId = null,Object? templateCategory = null,Object? name = null,Object? consumptionPeriodDays = null,Object? quantity = null,Object? createdAt = null,Object? updatedAt = null,Object? icon = null,Object? lastPurchasedDate = null,Object? purchaseOrder = null,Object? isQuickAdd = null,Object? quickAddCategory = freezed,Object? isSelected = null,Object? selectedQuantity = null,Object? purchaseCount = null,}) {
  return _then(_Grocery(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as UniqueId,templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as UniqueId,templateCategory: null == templateCategory ? _self.templateCategory : templateCategory // ignore: cast_nullable_to_non_nullable
as GroceryCategory,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,consumptionPeriodDays: null == consumptionPeriodDays ? _self.consumptionPeriodDays : consumptionPeriodDays // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,lastPurchasedDate: null == lastPurchasedDate ? _self.lastPurchasedDate : lastPurchasedDate // ignore: cast_nullable_to_non_nullable
as Option<DateTime>,purchaseOrder: null == purchaseOrder ? _self.purchaseOrder : purchaseOrder // ignore: cast_nullable_to_non_nullable
as Option<int>,isQuickAdd: null == isQuickAdd ? _self.isQuickAdd : isQuickAdd // ignore: cast_nullable_to_non_nullable
as bool,quickAddCategory: freezed == quickAddCategory ? _self.quickAddCategory : quickAddCategory // ignore: cast_nullable_to_non_nullable
as GroceryDueCategory?,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,selectedQuantity: null == selectedQuantity ? _self.selectedQuantity : selectedQuantity // ignore: cast_nullable_to_non_nullable
as int,purchaseCount: null == purchaseCount ? _self.purchaseCount : purchaseCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Grocery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroceryCategoryCopyWith<$Res> get templateCategory {
  
  return $GroceryCategoryCopyWith<$Res>(_self.templateCategory, (value) {
    return _then(_self.copyWith(templateCategory: value));
  });
}
}

// dart format on
