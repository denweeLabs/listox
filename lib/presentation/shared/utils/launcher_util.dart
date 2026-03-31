// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:listox/presentation/bloc/user_preferences/user_preferences_cubit.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';
import 'package:listox/di/di.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_kit/ui_kit.dart';

class LauncherUtil {
  static Future<bool> launchSupportEmail(BuildContext context) async {
    final isSuccess = await CoreLauncherUtil.launchEmail(
      to: [AppConstants.supportEmail],
      subject: AppConstants.supportEmailSubject,
    );
    if (!isSuccess) {
      CoreDialogsUtil.showErrorSnackbar(
        description: context.tr(
          LocaleKeys.error_message_email_failed_to_open_support,
          args: [AppConstants.supportEmail],
        ),
      );
    }
    return isSuccess;
  }

  static Future<bool> launchTermsOfUse(BuildContext context) async {
    return _launchLandingRes(context, AppConstants.termsOfUseUrl);
  }

  static Future<bool> launchPrivacyPolicy(BuildContext context) async {
    return _launchLandingRes(context, AppConstants.privacyPolicyUrl);
  }

  static Future<bool> launchLanding(BuildContext context) async {
    return _launchLandingRes(context, AppConstants.landingUrl);
  }

  static Future<bool> _launchLandingRes(
    BuildContext context,
    String resource,
  ) async {
    final preferences = getIt<UserPreferencesCubit>().state.preferences;
    final url = Uri.parse(resource).replace(
      queryParameters: {
        'lang': preferences.language.languageCode,
        'coloration': preferences.theme.colorationId.value.toString(),
        'brightness': preferences.theme.mode.name,
      },
    );
    final isSuccess = await CoreLauncherUtil.launchUrl(url.toString());
    if (!isSuccess) {
      CoreDialogsUtil.showErrorSnackbar(
        title: context.tr(LocaleKeys.label_oops),
        description: context.tr(LocaleKeys.error_message_common_unexpected),
      );
    }
    return isSuccess;
  }
}
