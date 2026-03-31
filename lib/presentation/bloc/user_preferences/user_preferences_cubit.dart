import 'dart:async';

import 'package:app_core/app_core.dart';
import 'package:listox/core/notifications/domain/use_case/schedule_notifications_use_case.dart';
import 'package:listox/core/user_preferences/domain/entity/notification_mode.dart';
import 'package:listox/core/user_preferences/domain/entity/user_preferences.dart';
import 'package:listox/core/user_preferences/domain/entity/preferences_failure.dart';
import 'package:listox/core/user_preferences/domain/repo/user_preferences_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_preferences_state.dart';
part 'user_preferences_cubit.freezed.dart';

@LazySingleton()
class UserPreferencesCubit extends Cubit<UserPreferencesState> {
  final UserPreferencesRepo _preferencesRepo;
  final ScheduleNotificationsUseCase _scheduleNotificationsUseCase;

  UserPreferencesCubit(this._preferencesRepo, this._scheduleNotificationsUseCase)
    : super(_initialState(_preferencesRepo.getPrefrencesLocal()));

  static const uploadThresholdDuration = Duration(milliseconds: 1000);
  static const localStorageThresholdDuration = Duration(milliseconds: 1000);

  Timer? _uploadTimer;
  Timer? _localStorageTimer;

  @override
  Future<void> close() async {
    _uploadTimer?.cancel();
    _localStorageTimer?.cancel();
    super.close();
  }

  static UserPreferencesState _initialState(
    Either<PreferencesFailure, Option<UserPreferences>> localData,
  ) {
    return UserPreferencesState(
      preferences: localData.foldNullableElse(onElse: UserPreferences.initial),
      failure: localData.fold((failure) => Some(failure), (_) => const None()),
    );
  }

  void toggleIsNotificationsEnabled() {
    final newValue = !state.preferences.notifications.isEnabled;
    final newPreferences = state.preferences.copyWith(
      notifications: state.preferences.notifications.copyWith(
        isEnabled: newValue,
      ),
    );
    emitPreservePreferences(
      newPreferences,
      callback: _scheduleNotificationsUseCase.execute,
    );
  }

  void changeNotificationTime(DateTime time) {
    final newPreferences = state.preferences.copyWith(
      notifications: state.preferences.notifications.copyWith(time: time),
    );
    emitPreservePreferences(
      newPreferences,
      callback: _scheduleNotificationsUseCase.execute,
    );
  }

  void changeNotificationsModeData(
    (List<int> days, NotificationMode mode) result,
  ) {
    final newPreferences = state.preferences.copyWith(
      notifications: state.preferences.notifications.copyWith(
        notificationMode: result.$2,
        manualNotificationDays: result.$1,
      ),
    );
    emitPreservePreferences(
      newPreferences,
      callback: _scheduleNotificationsUseCase.execute,
    );
  }

  void toggleIsHapticsEnabled() {
    final isEnabled = state.preferences.misc.isHapticsEnabled;
    final newPreferences = state.preferences.copyWith(
      misc: state.preferences.misc.copyWith(isHapticsEnabled: !isEnabled),
    );
    emitPreservePreferences(newPreferences);
  }

  void changeThemeMode(ThemeMode mode) {
    final newPreferences = state.preferences.copyWith(
      theme: state.preferences.theme.copyWith(mode: mode),
    );
    emitPreservePreferences(newPreferences);
  }

  void changeThemeColoration(UniqueId id) {
    final newPreferences = state.preferences.copyWith(
      theme: state.preferences.theme.copyWith(colorationId: id),
    );
    emitPreservePreferences(newPreferences);
  }

  void changeLanguage(Locale locale) {
    final isChanged = locale.languageCode != state.preferences.language.languageCode;
    if (isChanged) {
      final newPreferences = state.preferences.copyWith(language: locale);
      emitPreservePreferences(
        newPreferences,
        callback: _scheduleNotificationsUseCase.execute,
      );
    }
  }

  Future<void> clearState({
    bool preserveTheme = false,
    bool preserveLanguage = false,
  }) async {
    if (preserveTheme || preserveLanguage) {
      var outPreferences = UserPreferences.initial();
      if (preserveTheme) {
        outPreferences = outPreferences.copyWith(
          theme: state.preferences.theme,
        );
      }
      if (preserveLanguage) {
        outPreferences = outPreferences.copyWith(
          language: state.preferences.language,
        );
      }
      emitPreservePreferences(outPreferences, remotePreserve: false);
    } else {
      emit(UserPreferencesState.initial());
    }
  }

  Future<void> emitPreservePreferences(
    UserPreferences data, {
    bool localPreserve = true,
    bool remotePreserve = true,
    VoidCallback? callback,
  }) async {
    emit(state.copyWith(preferences: data, failure: const None()));

    if (localPreserve) {
      _localStorageTimer?.cancel();
      _localStorageTimer = Timer(localStorageThresholdDuration, () {
        _preferencesRepo.storePrefrencesLocal(data);
        callback?.call();
      });
    }

    // if (remotePreserve) {
    //   if (_authCubit.state.isUnauthenticated) return;

    //   _uploadTimer?.cancel();
    //   _uploadTimer = Timer(uploadThresholdDuration, () {
    //     _preferencesRepo.storePreferencesRemote(normalizedPref).then((failureOrSuccess) {
    //       final result = failureOrSuccess.getEntries();
    //       if (result.$1 != null) {
    //         emit(state.copyWith(failure: Some(result.$1!)));
    //       }
    //     });
    //   });
    // }
  }
}
