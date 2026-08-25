// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_pattern.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShoppingPattern {

 List<DateTime> get purchaseDates; double? get averageIntervalDays;
/// Create a copy of ShoppingPattern
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShoppingPatternCopyWith<ShoppingPattern> get copyWith => _$ShoppingPatternCopyWithImpl<ShoppingPattern>(this as ShoppingPattern, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShoppingPattern&&const DeepCollectionEquality().equals(other.purchaseDates, purchaseDates)&&(identical(other.averageIntervalDays, averageIntervalDays) || other.averageIntervalDays == averageIntervalDays));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(purchaseDates),averageIntervalDays);

@override
String toString() {
  return 'ShoppingPattern(purchaseDates: $purchaseDates, averageIntervalDays: $averageIntervalDays)';
}


}

/// @nodoc
abstract mixin class $ShoppingPatternCopyWith<$Res>  {
  factory $ShoppingPatternCopyWith(ShoppingPattern value, $Res Function(ShoppingPattern) _then) = _$ShoppingPatternCopyWithImpl;
@useResult
$Res call({
 List<DateTime> purchaseDates, double? averageIntervalDays
});




}
/// @nodoc
class _$ShoppingPatternCopyWithImpl<$Res>
    implements $ShoppingPatternCopyWith<$Res> {
  _$ShoppingPatternCopyWithImpl(this._self, this._then);

  final ShoppingPattern _self;
  final $Res Function(ShoppingPattern) _then;

/// Create a copy of ShoppingPattern
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? purchaseDates = null,Object? averageIntervalDays = freezed,}) {
  return _then(_self.copyWith(
purchaseDates: null == purchaseDates ? _self.purchaseDates : purchaseDates // ignore: cast_nullable_to_non_nullable
as List<DateTime>,averageIntervalDays: freezed == averageIntervalDays ? _self.averageIntervalDays : averageIntervalDays // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShoppingPattern].
extension ShoppingPatternPatterns on ShoppingPattern {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShoppingPattern value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShoppingPattern() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShoppingPattern value)  $default,){
final _that = this;
switch (_that) {
case _ShoppingPattern():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShoppingPattern value)?  $default,){
final _that = this;
switch (_that) {
case _ShoppingPattern() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DateTime> purchaseDates,  double? averageIntervalDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShoppingPattern() when $default != null:
return $default(_that.purchaseDates,_that.averageIntervalDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DateTime> purchaseDates,  double? averageIntervalDays)  $default,) {final _that = this;
switch (_that) {
case _ShoppingPattern():
return $default(_that.purchaseDates,_that.averageIntervalDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DateTime> purchaseDates,  double? averageIntervalDays)?  $default,) {final _that = this;
switch (_that) {
case _ShoppingPattern() when $default != null:
return $default(_that.purchaseDates,_that.averageIntervalDays);case _:
  return null;

}
}

}

/// @nodoc


class _ShoppingPattern implements ShoppingPattern {
  const _ShoppingPattern({final  List<DateTime> purchaseDates = const [], this.averageIntervalDays}): _purchaseDates = purchaseDates;
  

 final  List<DateTime> _purchaseDates;
@override@JsonKey() List<DateTime> get purchaseDates {
  if (_purchaseDates is EqualUnmodifiableListView) return _purchaseDates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_purchaseDates);
}

@override final  double? averageIntervalDays;

/// Create a copy of ShoppingPattern
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShoppingPatternCopyWith<_ShoppingPattern> get copyWith => __$ShoppingPatternCopyWithImpl<_ShoppingPattern>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShoppingPattern&&const DeepCollectionEquality().equals(other._purchaseDates, _purchaseDates)&&(identical(other.averageIntervalDays, averageIntervalDays) || other.averageIntervalDays == averageIntervalDays));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_purchaseDates),averageIntervalDays);

@override
String toString() {
  return 'ShoppingPattern(purchaseDates: $purchaseDates, averageIntervalDays: $averageIntervalDays)';
}


}

/// @nodoc
abstract mixin class _$ShoppingPatternCopyWith<$Res> implements $ShoppingPatternCopyWith<$Res> {
  factory _$ShoppingPatternCopyWith(_ShoppingPattern value, $Res Function(_ShoppingPattern) _then) = __$ShoppingPatternCopyWithImpl;
@override @useResult
$Res call({
 List<DateTime> purchaseDates, double? averageIntervalDays
});




}
/// @nodoc
class __$ShoppingPatternCopyWithImpl<$Res>
    implements _$ShoppingPatternCopyWith<$Res> {
  __$ShoppingPatternCopyWithImpl(this._self, this._then);

  final _ShoppingPattern _self;
  final $Res Function(_ShoppingPattern) _then;

/// Create a copy of ShoppingPattern
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? purchaseDates = null,Object? averageIntervalDays = freezed,}) {
  return _then(_ShoppingPattern(
purchaseDates: null == purchaseDates ? _self._purchaseDates : purchaseDates // ignore: cast_nullable_to_non_nullable
as List<DateTime>,averageIntervalDays: freezed == averageIntervalDays ? _self.averageIntervalDays : averageIntervalDays // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
