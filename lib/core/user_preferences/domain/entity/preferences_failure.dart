import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';

enum PreferencesFailure {
  unexpected;

  static PreferencesFailure fromAppException(AppException error) {
    return error.map<PreferencesFailure>(
      authorization: (_) => PreferencesFailure.unexpected,
      connection: (_) => PreferencesFailure.unexpected,
      generic: (x) =>
          // PreferencesFailure.values
          //     .firstWhereOrNull((e) => e.apiCodes?.contains(x.code) ?? false) ??
          PreferencesFailure.unexpected,
    );
  }
}

extension PreferencesFailureX on PreferencesFailure {
  String errorMessage(BuildContext context) {
    switch (this) {
      // case PreferencesFailure.internalServer: return context.tr(LocaleKeys.error_message_update_profile_internal_server);
      // case PreferencesFailure.connectionTimeout: return context.tr(LocaleKeys.error_message_update_profile_connection_timeout);
      default: return context.tr(LocaleKeys.error_message_preferences_unexpected);
    }
  }
}