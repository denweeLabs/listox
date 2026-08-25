// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubscriptionState implements DiagnosticableTreeMixin {

 UserSubscription? get subscription; SubscriptionFailure? get failure; SubscriptionPlans? get plans; bool get isInitializing; bool get isPurchasing; bool get isRestoring;
/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionStateCopyWith<SubscriptionState> get copyWith => _$SubscriptionStateCopyWithImpl<SubscriptionState>(this as SubscriptionState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SubscriptionState'))
    ..add(DiagnosticsProperty('subscription', subscription))..add(DiagnosticsProperty('failure', failure))..add(DiagnosticsProperty('plans', plans))..add(DiagnosticsProperty('isInitializing', isInitializing))..add(DiagnosticsProperty('isPurchasing', isPurchasing))..add(DiagnosticsProperty('isRestoring', isRestoring));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionState&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.plans, plans) || other.plans == plans)&&(identical(other.isInitializing, isInitializing) || other.isInitializing == isInitializing)&&(identical(other.isPurchasing, isPurchasing) || other.isPurchasing == isPurchasing)&&(identical(other.isRestoring, isRestoring) || other.isRestoring == isRestoring));
}


@override
int get hashCode => Object.hash(runtimeType,subscription,failure,plans,isInitializing,isPurchasing,isRestoring);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SubscriptionState(subscription: $subscription, failure: $failure, plans: $plans, isInitializing: $isInitializing, isPurchasing: $isPurchasing, isRestoring: $isRestoring)';
}


}

/// @nodoc
abstract mixin class $SubscriptionStateCopyWith<$Res>  {
  factory $SubscriptionStateCopyWith(SubscriptionState value, $Res Function(SubscriptionState) _then) = _$SubscriptionStateCopyWithImpl;
@useResult
$Res call({
 UserSubscription? subscription, SubscriptionFailure? failure, SubscriptionPlans? plans, bool isInitializing, bool isPurchasing, bool isRestoring
});




}
/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._self, this._then);

  final SubscriptionState _self;
  final $Res Function(SubscriptionState) _then;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subscription = freezed,Object? failure = freezed,Object? plans = freezed,Object? isInitializing = null,Object? isPurchasing = null,Object? isRestoring = null,}) {
  return _then(_self.copyWith(
subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as UserSubscription?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as SubscriptionFailure?,plans: freezed == plans ? _self.plans : plans // ignore: cast_nullable_to_non_nullable
as SubscriptionPlans?,isInitializing: null == isInitializing ? _self.isInitializing : isInitializing // ignore: cast_nullable_to_non_nullable
as bool,isPurchasing: null == isPurchasing ? _self.isPurchasing : isPurchasing // ignore: cast_nullable_to_non_nullable
as bool,isRestoring: null == isRestoring ? _self.isRestoring : isRestoring // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionState].
extension SubscriptionStatePatterns on SubscriptionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionState value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionState value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserSubscription? subscription,  SubscriptionFailure? failure,  SubscriptionPlans? plans,  bool isInitializing,  bool isPurchasing,  bool isRestoring)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionState() when $default != null:
return $default(_that.subscription,_that.failure,_that.plans,_that.isInitializing,_that.isPurchasing,_that.isRestoring);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserSubscription? subscription,  SubscriptionFailure? failure,  SubscriptionPlans? plans,  bool isInitializing,  bool isPurchasing,  bool isRestoring)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionState():
return $default(_that.subscription,_that.failure,_that.plans,_that.isInitializing,_that.isPurchasing,_that.isRestoring);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserSubscription? subscription,  SubscriptionFailure? failure,  SubscriptionPlans? plans,  bool isInitializing,  bool isPurchasing,  bool isRestoring)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionState() when $default != null:
return $default(_that.subscription,_that.failure,_that.plans,_that.isInitializing,_that.isPurchasing,_that.isRestoring);case _:
  return null;

}
}

}

/// @nodoc


class _SubscriptionState extends SubscriptionState with DiagnosticableTreeMixin {
  const _SubscriptionState({this.subscription, this.failure, this.plans, this.isInitializing = false, this.isPurchasing = false, this.isRestoring = false}): super._();
  

@override final  UserSubscription? subscription;
@override final  SubscriptionFailure? failure;
@override final  SubscriptionPlans? plans;
@override@JsonKey() final  bool isInitializing;
@override@JsonKey() final  bool isPurchasing;
@override@JsonKey() final  bool isRestoring;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionStateCopyWith<_SubscriptionState> get copyWith => __$SubscriptionStateCopyWithImpl<_SubscriptionState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SubscriptionState'))
    ..add(DiagnosticsProperty('subscription', subscription))..add(DiagnosticsProperty('failure', failure))..add(DiagnosticsProperty('plans', plans))..add(DiagnosticsProperty('isInitializing', isInitializing))..add(DiagnosticsProperty('isPurchasing', isPurchasing))..add(DiagnosticsProperty('isRestoring', isRestoring));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionState&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.plans, plans) || other.plans == plans)&&(identical(other.isInitializing, isInitializing) || other.isInitializing == isInitializing)&&(identical(other.isPurchasing, isPurchasing) || other.isPurchasing == isPurchasing)&&(identical(other.isRestoring, isRestoring) || other.isRestoring == isRestoring));
}


@override
int get hashCode => Object.hash(runtimeType,subscription,failure,plans,isInitializing,isPurchasing,isRestoring);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SubscriptionState(subscription: $subscription, failure: $failure, plans: $plans, isInitializing: $isInitializing, isPurchasing: $isPurchasing, isRestoring: $isRestoring)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionStateCopyWith<$Res> implements $SubscriptionStateCopyWith<$Res> {
  factory _$SubscriptionStateCopyWith(_SubscriptionState value, $Res Function(_SubscriptionState) _then) = __$SubscriptionStateCopyWithImpl;
@override @useResult
$Res call({
 UserSubscription? subscription, SubscriptionFailure? failure, SubscriptionPlans? plans, bool isInitializing, bool isPurchasing, bool isRestoring
});




}
/// @nodoc
class __$SubscriptionStateCopyWithImpl<$Res>
    implements _$SubscriptionStateCopyWith<$Res> {
  __$SubscriptionStateCopyWithImpl(this._self, this._then);

  final _SubscriptionState _self;
  final $Res Function(_SubscriptionState) _then;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subscription = freezed,Object? failure = freezed,Object? plans = freezed,Object? isInitializing = null,Object? isPurchasing = null,Object? isRestoring = null,}) {
  return _then(_SubscriptionState(
subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as UserSubscription?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as SubscriptionFailure?,plans: freezed == plans ? _self.plans : plans // ignore: cast_nullable_to_non_nullable
as SubscriptionPlans?,isInitializing: null == isInitializing ? _self.isInitializing : isInitializing // ignore: cast_nullable_to_non_nullable
as bool,isPurchasing: null == isPurchasing ? _self.isPurchasing : isPurchasing // ignore: cast_nullable_to_non_nullable
as bool,isRestoring: null == isRestoring ? _self.isRestoring : isRestoring // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
