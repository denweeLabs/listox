// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_custom_grocery_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddCustomGroceryState {

 String get selectedIcon; UniqueId get selectedCategoryId;
/// Create a copy of AddCustomGroceryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCustomGroceryStateCopyWith<AddCustomGroceryState> get copyWith => _$AddCustomGroceryStateCopyWithImpl<AddCustomGroceryState>(this as AddCustomGroceryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCustomGroceryState&&(identical(other.selectedIcon, selectedIcon) || other.selectedIcon == selectedIcon)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIcon,selectedCategoryId);

@override
String toString() {
  return 'AddCustomGroceryState(selectedIcon: $selectedIcon, selectedCategoryId: $selectedCategoryId)';
}


}

/// @nodoc
abstract mixin class $AddCustomGroceryStateCopyWith<$Res>  {
  factory $AddCustomGroceryStateCopyWith(AddCustomGroceryState value, $Res Function(AddCustomGroceryState) _then) = _$AddCustomGroceryStateCopyWithImpl;
@useResult
$Res call({
 String selectedIcon, UniqueId selectedCategoryId
});




}
/// @nodoc
class _$AddCustomGroceryStateCopyWithImpl<$Res>
    implements $AddCustomGroceryStateCopyWith<$Res> {
  _$AddCustomGroceryStateCopyWithImpl(this._self, this._then);

  final AddCustomGroceryState _self;
  final $Res Function(AddCustomGroceryState) _then;

/// Create a copy of AddCustomGroceryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedIcon = null,Object? selectedCategoryId = null,}) {
  return _then(_self.copyWith(
selectedIcon: null == selectedIcon ? _self.selectedIcon : selectedIcon // ignore: cast_nullable_to_non_nullable
as String,selectedCategoryId: null == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as UniqueId,
  ));
}

}


/// Adds pattern-matching-related methods to [AddCustomGroceryState].
extension AddCustomGroceryStatePatterns on AddCustomGroceryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddCustomGroceryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddCustomGroceryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddCustomGroceryState value)  $default,){
final _that = this;
switch (_that) {
case _AddCustomGroceryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddCustomGroceryState value)?  $default,){
final _that = this;
switch (_that) {
case _AddCustomGroceryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String selectedIcon,  UniqueId selectedCategoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddCustomGroceryState() when $default != null:
return $default(_that.selectedIcon,_that.selectedCategoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String selectedIcon,  UniqueId selectedCategoryId)  $default,) {final _that = this;
switch (_that) {
case _AddCustomGroceryState():
return $default(_that.selectedIcon,_that.selectedCategoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String selectedIcon,  UniqueId selectedCategoryId)?  $default,) {final _that = this;
switch (_that) {
case _AddCustomGroceryState() when $default != null:
return $default(_that.selectedIcon,_that.selectedCategoryId);case _:
  return null;

}
}

}

/// @nodoc


class _AddCustomGroceryState implements AddCustomGroceryState {
  const _AddCustomGroceryState({this.selectedIcon = '', required this.selectedCategoryId});
  

@override@JsonKey() final  String selectedIcon;
@override final  UniqueId selectedCategoryId;

/// Create a copy of AddCustomGroceryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCustomGroceryStateCopyWith<_AddCustomGroceryState> get copyWith => __$AddCustomGroceryStateCopyWithImpl<_AddCustomGroceryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCustomGroceryState&&(identical(other.selectedIcon, selectedIcon) || other.selectedIcon == selectedIcon)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIcon,selectedCategoryId);

@override
String toString() {
  return 'AddCustomGroceryState(selectedIcon: $selectedIcon, selectedCategoryId: $selectedCategoryId)';
}


}

/// @nodoc
abstract mixin class _$AddCustomGroceryStateCopyWith<$Res> implements $AddCustomGroceryStateCopyWith<$Res> {
  factory _$AddCustomGroceryStateCopyWith(_AddCustomGroceryState value, $Res Function(_AddCustomGroceryState) _then) = __$AddCustomGroceryStateCopyWithImpl;
@override @useResult
$Res call({
 String selectedIcon, UniqueId selectedCategoryId
});




}
/// @nodoc
class __$AddCustomGroceryStateCopyWithImpl<$Res>
    implements _$AddCustomGroceryStateCopyWith<$Res> {
  __$AddCustomGroceryStateCopyWithImpl(this._self, this._then);

  final _AddCustomGroceryState _self;
  final $Res Function(_AddCustomGroceryState) _then;

/// Create a copy of AddCustomGroceryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedIcon = null,Object? selectedCategoryId = null,}) {
  return _then(_AddCustomGroceryState(
selectedIcon: null == selectedIcon ? _self.selectedIcon : selectedIcon // ignore: cast_nullable_to_non_nullable
as String,selectedCategoryId: null == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as UniqueId,
  ));
}


}

// dart format on
