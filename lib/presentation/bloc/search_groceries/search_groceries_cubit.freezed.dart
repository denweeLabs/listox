// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_groceries_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchGroceriesState {

 String get query; List<GroceryTemplate> get results; Option<GroceryFailure> get failure;
/// Create a copy of SearchGroceriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchGroceriesStateCopyWith<SearchGroceriesState> get copyWith => _$SearchGroceriesStateCopyWithImpl<SearchGroceriesState>(this as SearchGroceriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchGroceriesState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(results),failure);

@override
String toString() {
  return 'SearchGroceriesState(query: $query, results: $results, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SearchGroceriesStateCopyWith<$Res>  {
  factory $SearchGroceriesStateCopyWith(SearchGroceriesState value, $Res Function(SearchGroceriesState) _then) = _$SearchGroceriesStateCopyWithImpl;
@useResult
$Res call({
 String query, List<GroceryTemplate> results, Option<GroceryFailure> failure
});




}
/// @nodoc
class _$SearchGroceriesStateCopyWithImpl<$Res>
    implements $SearchGroceriesStateCopyWith<$Res> {
  _$SearchGroceriesStateCopyWithImpl(this._self, this._then);

  final SearchGroceriesState _self;
  final $Res Function(SearchGroceriesState) _then;

/// Create a copy of SearchGroceriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? results = null,Object? failure = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<GroceryTemplate>,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Option<GroceryFailure>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchGroceriesState].
extension SearchGroceriesStatePatterns on SearchGroceriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchGroceriesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchGroceriesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchGroceriesState value)  $default,){
final _that = this;
switch (_that) {
case _SearchGroceriesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchGroceriesState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchGroceriesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<GroceryTemplate> results,  Option<GroceryFailure> failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchGroceriesState() when $default != null:
return $default(_that.query,_that.results,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<GroceryTemplate> results,  Option<GroceryFailure> failure)  $default,) {final _that = this;
switch (_that) {
case _SearchGroceriesState():
return $default(_that.query,_that.results,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<GroceryTemplate> results,  Option<GroceryFailure> failure)?  $default,) {final _that = this;
switch (_that) {
case _SearchGroceriesState() when $default != null:
return $default(_that.query,_that.results,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _SearchGroceriesState implements SearchGroceriesState {
  const _SearchGroceriesState({this.query = '', final  List<GroceryTemplate> results = const [], this.failure = const None()}): _results = results;
  

@override@JsonKey() final  String query;
 final  List<GroceryTemplate> _results;
@override@JsonKey() List<GroceryTemplate> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey() final  Option<GroceryFailure> failure;

/// Create a copy of SearchGroceriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchGroceriesStateCopyWith<_SearchGroceriesState> get copyWith => __$SearchGroceriesStateCopyWithImpl<_SearchGroceriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchGroceriesState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_results),failure);

@override
String toString() {
  return 'SearchGroceriesState(query: $query, results: $results, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$SearchGroceriesStateCopyWith<$Res> implements $SearchGroceriesStateCopyWith<$Res> {
  factory _$SearchGroceriesStateCopyWith(_SearchGroceriesState value, $Res Function(_SearchGroceriesState) _then) = __$SearchGroceriesStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<GroceryTemplate> results, Option<GroceryFailure> failure
});




}
/// @nodoc
class __$SearchGroceriesStateCopyWithImpl<$Res>
    implements _$SearchGroceriesStateCopyWith<$Res> {
  __$SearchGroceriesStateCopyWithImpl(this._self, this._then);

  final _SearchGroceriesState _self;
  final $Res Function(_SearchGroceriesState) _then;

/// Create a copy of SearchGroceriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? results = null,Object? failure = null,}) {
  return _then(_SearchGroceriesState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<GroceryTemplate>,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Option<GroceryFailure>,
  ));
}


}

// dart format on
