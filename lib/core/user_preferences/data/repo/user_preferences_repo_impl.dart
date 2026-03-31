import 'package:flutter/widgets.dart';
import 'package:listox/core/user_preferences/data/model/user_preferences_dto.dart';
import 'package:listox/core/user_preferences/domain/entity/preferences_failure.dart';
import 'package:listox/core/user_preferences/domain/entity/user_preferences.dart';
import 'package:listox/core/user_preferences/domain/repo/user_preferences_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:listox/core/user_preferences/domain/source/user_preferences_local_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserPreferencesRepo)
class UserPreferencesRepoImpl implements UserPreferencesRepo {
  final UserPreferencesLocalSource _localSource;

  const UserPreferencesRepoImpl(this._localSource);

  @override
  Either<PreferencesFailure, Option<UserPreferences>> getPrefrencesLocal() {
    try {
      final data = _localSource.get();
      final pref = optionOf(data?.toDomain());
      return right(pref);
    } catch (error) {
      debugPrint('getPreferencesLocal error: $error');
      return left(PreferencesFailure.unexpected);
    }
  }

  @override
  Future<Either<PreferencesFailure, Unit>> storePrefrencesLocal(UserPreferences preferences) async {
    try {
      final dto = UserPreferencesDto.fromDomain(preferences);
      await _localSource.store(dto);
      return right(unit);
    } catch (error) {
      debugPrint('storePrefrencesLocal error: $error');
      return left(PreferencesFailure.unexpected);
    }
  }

  @override
  Future<Either<PreferencesFailure, Unit>> deletePrefrencesLocal() async {
    try {
      await _localSource.delete();
      return right(unit);
    } catch (error) {
      debugPrint('deletePrefrencesLocal error: $error');
      return left(PreferencesFailure.unexpected);
    }
  }
}
