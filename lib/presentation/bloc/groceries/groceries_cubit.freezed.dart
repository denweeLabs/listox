// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groceries_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroceriesState {

 List<Grocery> get thisWeekItems; List<Grocery> get laterItems; bool get thisWeekHasHiddenItems; bool get laterHasHiddenItems; bool get isLoading; bool get isConfirming; Option<GroceryFailure> get failure;
/// Create a copy of GroceriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroceriesStateCopyWith<GroceriesState> get copyWith => _$GroceriesStateCopyWithImpl<GroceriesState>(this as GroceriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroceriesState&&const DeepCollectionEquality().equals(other.thisWeekItems, thisWeekItems)&&const DeepCollectionEquality().equals(other.laterItems, laterItems)&&(identical(other.thisWeekHasHiddenItems, thisWeekHasHiddenItems) || other.thisWeekHasHiddenItems == thisWeekHasHiddenItems)&&(identical(other.laterHasHiddenItems, laterHasHiddenItems) || other.laterHasHiddenItems == laterHasHiddenItems)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isConfirming, isConfirming) || other.isConfirming == isConfirming)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(thisWeekItems),const DeepCollectionEquality().hash(laterItems),thisWeekHasHiddenItems,laterHasHiddenItems,isLoading,isConfirming,failure);

@override
String toString() {
  return 'GroceriesState(thisWeekItems: $thisWeekItems, laterItems: $laterItems, thisWeekHasHiddenItems: $thisWeekHasHiddenItems, laterHasHiddenItems: $laterHasHiddenItems, isLoading: $isLoading, isConfirming: $isConfirming, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $GroceriesStateCopyWith<$Res>  {
  factory $GroceriesStateCopyWith(GroceriesState value, $Res Function(GroceriesState) _then) = _$GroceriesStateCopyWithImpl;
@useResult
$Res call({
 List<Grocery> thisWeekItems, List<Grocery> laterItems, bool thisWeekHasHiddenItems, bool laterHasHiddenItems, bool isLoading, bool isConfirming, Option<GroceryFailure> failure
});




}
/// @nodoc
class _$GroceriesStateCopyWithImpl<$Res>
    implements $GroceriesStateCopyWith<$Res> {
  _$GroceriesStateCopyWithImpl(this._self, this._then);

  final GroceriesState _self;
  final $Res Function(GroceriesState) _then;

/// Create a copy of GroceriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? thisWeekItems = null,Object? laterItems = null,Object? thisWeekHasHiddenItems = null,Object? laterHasHiddenItems = null,Object? isLoading = null,Object? isConfirming = null,Object? failure = null,}) {
  return _then(_self.copyWith(
thisWeekItems: null == thisWeekItems ? _self.thisWeekItems : thisWeekItems // ignore: cast_nullable_to_non_nullable
as List<Grocery>,laterItems: null == laterItems ? _self.laterItems : laterItems // ignore: cast_nullable_to_non_nullable
as List<Grocery>,thisWeekHasHiddenItems: null == thisWeekHasHiddenItems ? _self.thisWeekHasHiddenItems : thisWeekHasHiddenItems // ignore: cast_nullable_to_non_nullable
as bool,laterHasHiddenItems: null == laterHasHiddenItems ? _self.laterHasHiddenItems : laterHasHiddenItems // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isConfirming: null == isConfirming ? _self.isConfirming : isConfirming // ignore: cast_nullable_to_non_nullable
as bool,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Option<GroceryFailure>,
  ));
}

}


/// Adds pattern-matching-related methods to [GroceriesState].
extension GroceriesStatePatterns on GroceriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroceriesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroceriesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroceriesState value)  $default,){
final _that = this;
switch (_that) {
case _GroceriesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroceriesState value)?  $default,){
final _that = this;
switch (_that) {
case _GroceriesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Grocery> thisWeekItems,  List<Grocery> laterItems,  bool thisWeekHasHiddenItems,  bool laterHasHiddenItems,  bool isLoading,  bool isConfirming,  Option<GroceryFailure> failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroceriesState() when $default != null:
return $default(_that.thisWeekItems,_that.laterItems,_that.thisWeekHasHiddenItems,_that.laterHasHiddenItems,_that.isLoading,_that.isConfirming,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Grocery> thisWeekItems,  List<Grocery> laterItems,  bool thisWeekHasHiddenItems,  bool laterHasHiddenItems,  bool isLoading,  bool isConfirming,  Option<GroceryFailure> failure)  $default,) {final _that = this;
switch (_that) {
case _GroceriesState():
return $default(_that.thisWeekItems,_that.laterItems,_that.thisWeekHasHiddenItems,_that.laterHasHiddenItems,_that.isLoading,_that.isConfirming,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Grocery> thisWeekItems,  List<Grocery> laterItems,  bool thisWeekHasHiddenItems,  bool laterHasHiddenItems,  bool isLoading,  bool isConfirming,  Option<GroceryFailure> failure)?  $default,) {final _that = this;
switch (_that) {
case _GroceriesState() when $default != null:
return $default(_that.thisWeekItems,_that.laterItems,_that.thisWeekHasHiddenItems,_that.laterHasHiddenItems,_that.isLoading,_that.isConfirming,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _GroceriesState extends GroceriesState {
  const _GroceriesState({final  List<Grocery> thisWeekItems = const [], final  List<Grocery> laterItems = const [], this.thisWeekHasHiddenItems = false, this.laterHasHiddenItems = false, this.isLoading = true, this.isConfirming = false, this.failure = const None()}): _thisWeekItems = thisWeekItems,_laterItems = laterItems,super._();
  

 final  List<Grocery> _thisWeekItems;
@override@JsonKey() List<Grocery> get thisWeekItems {
  if (_thisWeekItems is EqualUnmodifiableListView) return _thisWeekItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_thisWeekItems);
}

 final  List<Grocery> _laterItems;
@override@JsonKey() List<Grocery> get laterItems {
  if (_laterItems is EqualUnmodifiableListView) return _laterItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_laterItems);
}

@override@JsonKey() final  bool thisWeekHasHiddenItems;
@override@JsonKey() final  bool laterHasHiddenItems;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isConfirming;
@override@JsonKey() final  Option<GroceryFailure> failure;

/// Create a copy of GroceriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroceriesStateCopyWith<_GroceriesState> get copyWith => __$GroceriesStateCopyWithImpl<_GroceriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroceriesState&&const DeepCollectionEquality().equals(other._thisWeekItems, _thisWeekItems)&&const DeepCollectionEquality().equals(other._laterItems, _laterItems)&&(identical(other.thisWeekHasHiddenItems, thisWeekHasHiddenItems) || other.thisWeekHasHiddenItems == thisWeekHasHiddenItems)&&(identical(other.laterHasHiddenItems, laterHasHiddenItems) || other.laterHasHiddenItems == laterHasHiddenItems)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isConfirming, isConfirming) || other.isConfirming == isConfirming)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_thisWeekItems),const DeepCollectionEquality().hash(_laterItems),thisWeekHasHiddenItems,laterHasHiddenItems,isLoading,isConfirming,failure);

@override
String toString() {
  return 'GroceriesState(thisWeekItems: $thisWeekItems, laterItems: $laterItems, thisWeekHasHiddenItems: $thisWeekHasHiddenItems, laterHasHiddenItems: $laterHasHiddenItems, isLoading: $isLoading, isConfirming: $isConfirming, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$GroceriesStateCopyWith<$Res> implements $GroceriesStateCopyWith<$Res> {
  factory _$GroceriesStateCopyWith(_GroceriesState value, $Res Function(_GroceriesState) _then) = __$GroceriesStateCopyWithImpl;
@override @useResult
$Res call({
 List<Grocery> thisWeekItems, List<Grocery> laterItems, bool thisWeekHasHiddenItems, bool laterHasHiddenItems, bool isLoading, bool isConfirming, Option<GroceryFailure> failure
});




}
/// @nodoc
class __$GroceriesStateCopyWithImpl<$Res>
    implements _$GroceriesStateCopyWith<$Res> {
  __$GroceriesStateCopyWithImpl(this._self, this._then);

  final _GroceriesState _self;
  final $Res Function(_GroceriesState) _then;

/// Create a copy of GroceriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? thisWeekItems = null,Object? laterItems = null,Object? thisWeekHasHiddenItems = null,Object? laterHasHiddenItems = null,Object? isLoading = null,Object? isConfirming = null,Object? failure = null,}) {
  return _then(_GroceriesState(
thisWeekItems: null == thisWeekItems ? _self._thisWeekItems : thisWeekItems // ignore: cast_nullable_to_non_nullable
as List<Grocery>,laterItems: null == laterItems ? _self._laterItems : laterItems // ignore: cast_nullable_to_non_nullable
as List<Grocery>,thisWeekHasHiddenItems: null == thisWeekHasHiddenItems ? _self.thisWeekHasHiddenItems : thisWeekHasHiddenItems // ignore: cast_nullable_to_non_nullable
as bool,laterHasHiddenItems: null == laterHasHiddenItems ? _self.laterHasHiddenItems : laterHasHiddenItems // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isConfirming: null == isConfirming ? _self.isConfirming : isConfirming // ignore: cast_nullable_to_non_nullable
as bool,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Option<GroceryFailure>,
  ));
}


}

// dart format on
