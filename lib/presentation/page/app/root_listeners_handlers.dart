// ignore_for_file: use_build_context_synchronously

import 'dart:math';

import 'package:ui_kit/ui_kit.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

mixin RootBlocListenersHandlers {
  var isErrorSnackbarDisplayed = false;

  void processAppResume() {}

  void processErrorSnackbar({
    required String Function(BuildContext) messageProvider,
  }) {
    if (isErrorSnackbarDisplayed) return;

    isErrorSnackbarDisplayed = true;

    final context = UiKitNavigator.context;

    CoreHapticUtil.medium();
    CoreDialogsUtil.showErrorSnackbar(
      title: getRandomErrorTitle(context),
      description: messageProvider(context),
    );

    Future.delayed(CoreDialogsUtil.snackbarErrorDisplayDuration, () {
      isErrorSnackbarDisplayed = false;
    });
  }

  String getRandomErrorTitle(BuildContext context) {
    final titles = [
      LocaleKeys.error_generic_titles_title1,
      LocaleKeys.error_generic_titles_title2,
      LocaleKeys.error_generic_titles_title3,
      LocaleKeys.error_generic_titles_title4,
      LocaleKeys.error_generic_titles_title5,
      LocaleKeys.error_generic_titles_title6,
      LocaleKeys.error_generic_titles_title7,
      LocaleKeys.error_generic_titles_title8,
      LocaleKeys.error_generic_titles_title9,
      LocaleKeys.error_generic_titles_title10,
      LocaleKeys.error_generic_titles_title11,
    ];

    final random = Random();
    final key = titles[random.nextInt(titles.length)];

    return context.tr(key);
  }
}
