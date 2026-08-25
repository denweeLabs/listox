// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroceryTemplate {

 UniqueId get id; UniqueId get categoryId; String get name; double get consumptionPeriodDays; String get icon;
/// Create a copy of GroceryTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroceryTemplateCopyWith<GroceryTemplate> get copyWith => _$GroceryTemplateCopyWithImpl<GroceryTemplate>(this as GroceryTemplate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroceryTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.consumptionPeriodDays, consumptionPeriodDays) || other.consumptionPeriodDays == consumptionPeriodDays)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,consumptionPeriodDays,icon);

@override
String toString() {
  return 'GroceryTemplate(id: $id, categoryId: $categoryId, name: $name, consumptionPeriodDays: $consumptionPeriodDays, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $GroceryTemplateCopyWith<$Res>  {
  factory $GroceryTemplateCopyWith(GroceryTemplate value, $Res Function(GroceryTemplate) _then) = _$GroceryTemplateCopyWithImpl;
@useResult
$Res call({
 UniqueId id, UniqueId categoryId, String name, double consumptionPeriodDays, String icon
});




}
/// @nodoc
class _$GroceryTemplateCopyWithImpl<$Res>
    implements $GroceryTemplateCopyWith<$Res> {
  _$GroceryTemplateCopyWithImpl(this._self, this._then);

  final GroceryTemplate _self;
  final $Res Function(GroceryTemplate) _then;

/// Create a copy of GroceryTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? categoryId = null,Object? name = null,Object? consumptionPeriodDays = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as UniqueId,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as UniqueId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,consumptionPeriodDays: null == consumptionPeriodDays ? _self.consumptionPeriodDays : consumptionPeriodDays // ignore: cast_nullable_to_non_nullable
as double,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GroceryTemplate].
extension GroceryTemplatePatterns on GroceryTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroceryTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroceryTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroceryTemplate value)  $default,){
final _that = this;
switch (_that) {
case _GroceryTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroceryTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _GroceryTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UniqueId id,  UniqueId categoryId,  String name,  double consumptionPeriodDays,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroceryTemplate() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.consumptionPeriodDays,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UniqueId id,  UniqueId categoryId,  String name,  double consumptionPeriodDays,  String icon)  $default,) {final _that = this;
switch (_that) {
case _GroceryTemplate():
return $default(_that.id,_that.categoryId,_that.name,_that.consumptionPeriodDays,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UniqueId id,  UniqueId categoryId,  String name,  double consumptionPeriodDays,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _GroceryTemplate() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.consumptionPeriodDays,_that.icon);case _:
  return null;

}
}

}

/// @nodoc


class _GroceryTemplate extends GroceryTemplate {
  const _GroceryTemplate({required this.id, required this.categoryId, required this.name, required this.consumptionPeriodDays, required this.icon}): super._();
  

@override final  UniqueId id;
@override final  UniqueId categoryId;
@override final  String name;
@override final  double consumptionPeriodDays;
@override final  String icon;

/// Create a copy of GroceryTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroceryTemplateCopyWith<_GroceryTemplate> get copyWith => __$GroceryTemplateCopyWithImpl<_GroceryTemplate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroceryTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.consumptionPeriodDays, consumptionPeriodDays) || other.consumptionPeriodDays == consumptionPeriodDays)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,consumptionPeriodDays,icon);

@override
String toString() {
  return 'GroceryTemplate(id: $id, categoryId: $categoryId, name: $name, consumptionPeriodDays: $consumptionPeriodDays, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$GroceryTemplateCopyWith<$Res> implements $GroceryTemplateCopyWith<$Res> {
  factory _$GroceryTemplateCopyWith(_GroceryTemplate value, $Res Function(_GroceryTemplate) _then) = __$GroceryTemplateCopyWithImpl;
@override @useResult
$Res call({
 UniqueId id, UniqueId categoryId, String name, double consumptionPeriodDays, String icon
});




}
/// @nodoc
class __$GroceryTemplateCopyWithImpl<$Res>
    implements _$GroceryTemplateCopyWith<$Res> {
  __$GroceryTemplateCopyWithImpl(this._self, this._then);

  final _GroceryTemplate _self;
  final $Res Function(_GroceryTemplate) _then;

/// Create a copy of GroceryTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? categoryId = null,Object? name = null,Object? consumptionPeriodDays = null,Object? icon = null,}) {
  return _then(_GroceryTemplate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as UniqueId,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as UniqueId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,consumptionPeriodDays: null == consumptionPeriodDays ? _self.consumptionPeriodDays : consumptionPeriodDays // ignore: cast_nullable_to_non_nullable
as double,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
