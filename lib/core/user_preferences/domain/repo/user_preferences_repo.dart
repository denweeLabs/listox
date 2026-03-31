import 'package:dartz/dartz.dart';
import 'package:listox/core/user_preferences/domain/entity/preferences_failure.dart';
import 'package:listox/core/user_preferences/domain/entity/user_preferences.dart';

abstract class UserPreferencesRepo {
  Either<PreferencesFailure, Option<UserPreferences>> getPrefrencesLocal();
  Future<Either<PreferencesFailure, Unit>> storePrefrencesLocal(UserPreferences preferences);
  Future<Either<PreferencesFailure, Unit>> deletePrefrencesLocal();
}