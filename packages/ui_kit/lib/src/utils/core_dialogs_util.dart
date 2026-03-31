// ignore_for_file: use_build_context_synchronously

import 'package:ui_kit/src/router/fade_slideup_page_route_builder.dart';
import 'package:ui_kit/src/snackbar/common_snackbar_widget.dart';
import 'package:ui_kit/src/snackbar/core_global_snackbar_widget.dart';
import 'package:ui_kit/src/snackbar/internet_connection_snackbar_widget.dart';
import 'package:ui_kit/src/snackbar/show_top_snackbar.dart';
import 'package:ui_kit/src/snackbar/toast_message_snackbar_widget.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoreDialogsUtil {
  static const snackbarDefaultAnimationDuration = Duration(milliseconds: 1500);
  static const snackbarDefaultDisplayDuration = Duration(milliseconds: 1200);
  static const snackbarSuccessDisplayDuration = Duration(milliseconds: 800);
  static const snackbarErrorDisplayDuration = Duration(milliseconds: 2200);
  static const snackbarNotificationDisplayDuration = Duration(milliseconds: 2000);
  static const toastMessageDisplayDuration = Duration(milliseconds: 1000);
  static final dialogBarrierColor = Colors.black.withValues(alpha: 0.65);

  static void showSuccessSnackbar({String? title, String? description, Duration? displayDuration}) {
    _showSnackbar(
      CommonSnackbar.success(title: title, description: description),
      displayDuration: displayDuration ?? snackbarSuccessDisplayDuration,
    );
  }

  static void showErrorSnackbar({String? title, String? description}) {
    _showSnackbar(
      CommonSnackbar.error(title: title, description: description),
      displayDuration: snackbarErrorDisplayDuration,
    );
  }

  static void showNoConnectionSnackbar({String? title, String? description}) {
    _showSnackbar(InternetConnectionSnackbar(title: title, description: description));
  }

  static void showToastMessage(String message, {EdgeInsets? padding}) {
    _showSnackbar(
      ToastMessageSnackbar(message),
      displayDuration: toastMessageDisplayDuration,
      padding: padding,
    );
  }

  static Future<T?> showDialog<T>(
    BuildContext context,
    Widget dialogBody, {
    RouteSettings? settings,
    Color? barrierColor,
    Duration? duration,
    Duration? reverseDuration,
    bool barrierDismissible = true,
    AlignmentGeometry alignment = Alignment.center,
  }) {
    return Navigator.of(context, rootNavigator: true).push(
      FadeSlideupPageRouteBuilder(
        settings: settings,
        slideBegin: 0.13,
        barrierColor: barrierColor ?? context.theme.shadowColor,
        barrierDismissible: barrierDismissible,
        duration: duration ?? const Duration(milliseconds: 350),
        reverseDuration: reverseDuration ?? const Duration(milliseconds: 250),
        builder: (context) {
          if (!barrierDismissible) {
            return PopScope(
              canPop: false,
              child: Dialog(
                insetPadding: EdgeInsets.zero,
                shadowColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                child: dialogBody,
              ),
            );
          }

          return Dialog(
            insetPadding: EdgeInsets.zero,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            child: dialogBody,
          );
        },
      ),
    );
  }

  static void _showSnackbar(
    Widget snackbarWidget, {
    Duration? displayDuration,
    VoidCallback? onTap,
    Curve curve = Curves.elasticOut,
    EdgeInsets? padding,
  }) {
    final overlayState = GlobalSnackbarController.instance.overlayKey.currentState;
    if (overlayState == null) return;

    return showTopSnackBar(
      overlayState,
      snackbarWidget,
      animationDuration: snackbarDefaultAnimationDuration,
      displayDuration: displayDuration ?? snackbarDefaultDisplayDuration,
      reverseAnimationDuration: const Duration(milliseconds: 400),
      curve: curve,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 10.h),
      onTap: onTap,
    );
  }
}
