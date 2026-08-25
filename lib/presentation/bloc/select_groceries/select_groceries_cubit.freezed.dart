// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_groceries_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectGroceriesState {

 bool get isConfirming; bool get isConfirmationSuccess; List<GroceryCategory> get categories; List<GroceryTemplate> get allGroceries; Set<UniqueId> get selectedGroceryIds; Option<GroceryFailure> get failure;
/// Create a copy of SelectGroceriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectGroceriesStateCopyWith<SelectGroceriesState> get copyWith => _$SelectGroceriesStateCopyWithImpl<SelectGroceriesState>(this as SelectGroceriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectGroceriesState&&(identical(other.isConfirming, isConfirming) || other.isConfirming == isConfirming)&&(identical(other.isConfirmationSuccess, isConfirmationSuccess) || other.isConfirmationSuccess == isConfirmationSuccess)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.allGroceries, allGroceries)&&const DeepCollectionEquality().equals(other.selectedGroceryIds, selectedGroceryIds)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isConfirming,isConfirmationSuccess,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(allGroceries),const DeepCollectionEquality().hash(selectedGroceryIds),failure);

@override
String toString() {
  return 'SelectGroceriesState(isConfirming: $isConfirming, isConfirmationSuccess: $isConfirmationSuccess, categories: $categories, allGroceries: $allGroceries, selectedGroceryIds: $selectedGroceryIds, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SelectGroceriesStateCopyWith<$Res>  {
  factory $SelectGroceriesStateCopyWith(SelectGroceriesState value, $Res Function(SelectGroceriesState) _then) = _$SelectGroceriesStateCopyWithImpl;
@useResult
$Res call({
 bool isConfirming, bool isConfirmationSuccess, List<GroceryCategory> categories, List<GroceryTemplate> allGroceries, Set<UniqueId> selectedGroceryIds, Option<GroceryFailure> failure
});




}
/// @nodoc
class _$SelectGroceriesStateCopyWithImpl<$Res>
    implements $SelectGroceriesStateCopyWith<$Res> {
  _$SelectGroceriesStateCopyWithImpl(this._self, this._then);

  final SelectGroceriesState _self;
  final $Res Function(SelectGroceriesState) _then;

/// Create a copy of SelectGroceriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isConfirming = null,Object? isConfirmationSuccess = null,Object? categories = null,Object? allGroceries = null,Object? selectedGroceryIds = null,Object? failure = null,}) {
  return _then(_self.copyWith(
isConfirming: null == isConfirming ? _self.isConfirming : isConfirming // ignore: cast_nullable_to_non_nullable
as bool,isConfirmationSuccess: null == isConfirmationSuccess ? _self.isConfirmationSuccess : isConfirmationSuccess // ignore: cast_nullable_to_non_nullable
as bool,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<GroceryCategory>,allGroceries: null == allGroceries ? _self.allGroceries : allGroceries // ignore: cast_nullable_to_non_nullable
as List<GroceryTemplate>,selectedGroceryIds: null == selectedGroceryIds ? _self.selectedGroceryIds : selectedGroceryIds // ignore: cast_nullable_to_non_nullable
as Set<UniqueId>,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Option<GroceryFailure>,
  ));
}

}


/// Adds pattern-matching-related methods to [SelectGroceriesState].
extension SelectGroceriesStatePatterns on SelectGroceriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelectGroceriesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelectGroceriesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelectGroceriesState value)  $default,){
final _that = this;
switch (_that) {
case _SelectGroceriesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelectGroceriesState value)?  $default,){
final _that = this;
switch (_that) {
case _SelectGroceriesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isConfirming,  bool isConfirmationSuccess,  List<GroceryCategory> categories,  List<GroceryTemplate> allGroceries,  Set<UniqueId> selectedGroceryIds,  Option<GroceryFailure> failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelectGroceriesState() when $default != null:
return $default(_that.isConfirming,_that.isConfirmationSuccess,_that.categories,_that.allGroceries,_that.selectedGroceryIds,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isConfirming,  bool isConfirmationSuccess,  List<GroceryCategory> categories,  List<GroceryTemplate> allGroceries,  Set<UniqueId> selectedGroceryIds,  Option<GroceryFailure> failure)  $default,) {final _that = this;
switch (_that) {
case _SelectGroceriesState():
return $default(_that.isConfirming,_that.isConfirmationSuccess,_that.categories,_that.allGroceries,_that.selectedGroceryIds,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isConfirming,  bool isConfirmationSuccess,  List<GroceryCategory> categories,  List<GroceryTemplate> allGroceries,  Set<UniqueId> selectedGroceryIds,  Option<GroceryFailure> failure)?  $default,) {final _that = this;
switch (_that) {
case _SelectGroceriesState() when $default != null:
return $default(_that.isConfirming,_that.isConfirmationSuccess,_that.categories,_that.allGroceries,_that.selectedGroceryIds,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _SelectGroceriesState extends SelectGroceriesState {
  const _SelectGroceriesState({this.isConfirming = false, this.isConfirmationSuccess = false, final  List<GroceryCategory> categories = const [], final  List<GroceryTemplate> allGroceries = const [], final  Set<UniqueId> selectedGroceryIds = const {}, this.failure = const None()}): _categories = categories,_allGroceries = allGroceries,_selectedGroceryIds = selectedGroceryIds,super._();
  

@override@JsonKey() final  bool isConfirming;
@override@JsonKey() final  bool isConfirmationSuccess;
 final  List<GroceryCategory> _categories;
@override@JsonKey() List<GroceryCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<GroceryTemplate> _allGroceries;
@override@JsonKey() List<GroceryTemplate> get allGroceries {
  if (_allGroceries is EqualUnmodifiableListView) return _allGroceries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allGroceries);
}

 final  Set<UniqueId> _selectedGroceryIds;
@override@JsonKey() Set<UniqueId> get selectedGroceryIds {
  if (_selectedGroceryIds is EqualUnmodifiableSetView) return _selectedGroceryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedGroceryIds);
}

@override@JsonKey() final  Option<GroceryFailure> failure;

/// Create a copy of SelectGroceriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectGroceriesStateCopyWith<_SelectGroceriesState> get copyWith => __$SelectGroceriesStateCopyWithImpl<_SelectGroceriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectGroceriesState&&(identical(other.isConfirming, isConfirming) || other.isConfirming == isConfirming)&&(identical(other.isConfirmationSuccess, isConfirmationSuccess) || other.isConfirmationSuccess == isConfirmationSuccess)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._allGroceries, _allGroceries)&&const DeepCollectionEquality().equals(other._selectedGroceryIds, _selectedGroceryIds)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isConfirming,isConfirmationSuccess,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_allGroceries),const DeepCollectionEquality().hash(_selectedGroceryIds),failure);

@override
String toString() {
  return 'SelectGroceriesState(isConfirming: $isConfirming, isConfirmationSuccess: $isConfirmationSuccess, categories: $categories, allGroceries: $allGroceries, selectedGroceryIds: $selectedGroceryIds, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$SelectGroceriesStateCopyWith<$Res> implements $SelectGroceriesStateCopyWith<$Res> {
  factory _$SelectGroceriesStateCopyWith(_SelectGroceriesState value, $Res Function(_SelectGroceriesState) _then) = __$SelectGroceriesStateCopyWithImpl;
@override @useResult
$Res call({
 bool isConfirming, bool isConfirmationSuccess, List<GroceryCategory> categories, List<GroceryTemplate> allGroceries, Set<UniqueId> selectedGroceryIds, Option<GroceryFailure> failure
});




}
/// @nodoc
class __$SelectGroceriesStateCopyWithImpl<$Res>
    implements _$SelectGroceriesStateCopyWith<$Res> {
  __$SelectGroceriesStateCopyWithImpl(this._self, this._then);

  final _SelectGroceriesState _self;
  final $Res Function(_SelectGroceriesState) _then;

/// Create a copy of SelectGroceriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isConfirming = null,Object? isConfirmationSuccess = null,Object? categories = null,Object? allGroceries = null,Object? selectedGroceryIds = null,Object? failure = null,}) {
  return _then(_SelectGroceriesState(
isConfirming: null == isConfirming ? _self.isConfirming : isConfirming // ignore: cast_nullable_to_non_nullable
as bool,isConfirmationSuccess: null == isConfirmationSuccess ? _self.isConfirmationSuccess : isConfirmationSuccess // ignore: cast_nullable_to_non_nullable
as bool,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<GroceryCategory>,allGroceries: null == allGroceries ? _self._allGroceries : allGroceries // ignore: cast_nullable_to_non_nullable
as List<GroceryTemplate>,selectedGroceryIds: null == selectedGroceryIds ? _self._selectedGroceryIds : selectedGroceryIds // ignore: cast_nullable_to_non_nullable
as Set<UniqueId>,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Option<GroceryFailure>,
  ));
}


}

// dart format on
