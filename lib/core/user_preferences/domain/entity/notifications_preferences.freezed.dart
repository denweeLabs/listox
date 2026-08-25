// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationsPreferences {

 DateTime get time; bool get isEnabled; NotificationMode get notificationMode; List<int> get manualNotificationDays;
/// Create a copy of NotificationsPreferences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsPreferencesCopyWith<NotificationsPreferences> get copyWith => _$NotificationsPreferencesCopyWithImpl<NotificationsPreferences>(this as NotificationsPreferences, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsPreferences&&(identical(other.time, time) || other.time == time)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.notificationMode, notificationMode) || other.notificationMode == notificationMode)&&const DeepCollectionEquality().equals(other.manualNotificationDays, manualNotificationDays));
}


@override
int get hashCode => Object.hash(runtimeType,time,isEnabled,notificationMode,const DeepCollectionEquality().hash(manualNotificationDays));

@override
String toString() {
  return 'NotificationsPreferences(time: $time, isEnabled: $isEnabled, notificationMode: $notificationMode, manualNotificationDays: $manualNotificationDays)';
}


}

/// @nodoc
abstract mixin class $NotificationsPreferencesCopyWith<$Res>  {
  factory $NotificationsPreferencesCopyWith(NotificationsPreferences value, $Res Function(NotificationsPreferences) _then) = _$NotificationsPreferencesCopyWithImpl;
@useResult
$Res call({
 DateTime time, bool isEnabled, NotificationMode notificationMode, List<int> manualNotificationDays
});




}
/// @nodoc
class _$NotificationsPreferencesCopyWithImpl<$Res>
    implements $NotificationsPreferencesCopyWith<$Res> {
  _$NotificationsPreferencesCopyWithImpl(this._self, this._then);

  final NotificationsPreferences _self;
  final $Res Function(NotificationsPreferences) _then;

/// Create a copy of NotificationsPreferences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? isEnabled = null,Object? notificationMode = null,Object? manualNotificationDays = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,notificationMode: null == notificationMode ? _self.notificationMode : notificationMode // ignore: cast_nullable_to_non_nullable
as NotificationMode,manualNotificationDays: null == manualNotificationDays ? _self.manualNotificationDays : manualNotificationDays // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationsPreferences].
extension NotificationsPreferencesPatterns on NotificationsPreferences {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationsPreferences value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationsPreferences() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationsPreferences value)  $default,){
final _that = this;
switch (_that) {
case _NotificationsPreferences():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationsPreferences value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationsPreferences() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime time,  bool isEnabled,  NotificationMode notificationMode,  List<int> manualNotificationDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationsPreferences() when $default != null:
return $default(_that.time,_that.isEnabled,_that.notificationMode,_that.manualNotificationDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime time,  bool isEnabled,  NotificationMode notificationMode,  List<int> manualNotificationDays)  $default,) {final _that = this;
switch (_that) {
case _NotificationsPreferences():
return $default(_that.time,_that.isEnabled,_that.notificationMode,_that.manualNotificationDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime time,  bool isEnabled,  NotificationMode notificationMode,  List<int> manualNotificationDays)?  $default,) {final _that = this;
switch (_that) {
case _NotificationsPreferences() when $default != null:
return $default(_that.time,_that.isEnabled,_that.notificationMode,_that.manualNotificationDays);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationsPreferences implements NotificationsPreferences {
  const _NotificationsPreferences({required this.time, required this.isEnabled, this.notificationMode = NotificationMode.auto, final  List<int> manualNotificationDays = const []}): _manualNotificationDays = manualNotificationDays;
  

@override final  DateTime time;
@override final  bool isEnabled;
@override@JsonKey() final  NotificationMode notificationMode;
 final  List<int> _manualNotificationDays;
@override@JsonKey() List<int> get manualNotificationDays {
  if (_manualNotificationDays is EqualUnmodifiableListView) return _manualNotificationDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_manualNotificationDays);
}


/// Create a copy of NotificationsPreferences
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationsPreferencesCopyWith<_NotificationsPreferences> get copyWith => __$NotificationsPreferencesCopyWithImpl<_NotificationsPreferences>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationsPreferences&&(identical(other.time, time) || other.time == time)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.notificationMode, notificationMode) || other.notificationMode == notificationMode)&&const DeepCollectionEquality().equals(other._manualNotificationDays, _manualNotificationDays));
}


@override
int get hashCode => Object.hash(runtimeType,time,isEnabled,notificationMode,const DeepCollectionEquality().hash(_manualNotificationDays));

@override
String toString() {
  return 'NotificationsPreferences(time: $time, isEnabled: $isEnabled, notificationMode: $notificationMode, manualNotificationDays: $manualNotificationDays)';
}


}

/// @nodoc
abstract mixin class _$NotificationsPreferencesCopyWith<$Res> implements $NotificationsPreferencesCopyWith<$Res> {
  factory _$NotificationsPreferencesCopyWith(_NotificationsPreferences value, $Res Function(_NotificationsPreferences) _then) = __$NotificationsPreferencesCopyWithImpl;
@override @useResult
$Res call({
 DateTime time, bool isEnabled, NotificationMode notificationMode, List<int> manualNotificationDays
});




}
/// @nodoc
class __$NotificationsPreferencesCopyWithImpl<$Res>
    implements _$NotificationsPreferencesCopyWith<$Res> {
  __$NotificationsPreferencesCopyWithImpl(this._self, this._then);

  final _NotificationsPreferences _self;
  final $Res Function(_NotificationsPreferences) _then;

/// Create a copy of NotificationsPreferences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? isEnabled = null,Object? notificationMode = null,Object? manualNotificationDays = null,}) {
  return _then(_NotificationsPreferences(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,notificationMode: null == notificationMode ? _self.notificationMode : notificationMode // ignore: cast_nullable_to_non_nullable
as NotificationMode,manualNotificationDays: null == manualNotificationDays ? _self._manualNotificationDays : manualNotificationDays // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
