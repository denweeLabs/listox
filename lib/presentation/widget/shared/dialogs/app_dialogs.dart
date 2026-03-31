// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:app_core/app_core.dart' show AppPermissionStatus, AppPermissionType, AppPermissionTypeX;
import 'package:listox/core/user_preferences/domain/entity/notifications_preferences.dart';
import 'package:listox/presentation/widget/shared/dialogs/grant_permission_dialog_widget.dart';
import 'package:listox/presentation/widget/shared/dialogs/grocery_delete_confirmation_dialog_widget.dart';
import 'package:listox/presentation/widget/shared/dialogs/notification_mode_dialog_widget.dart';
import 'package:listox/presentation/widget/shared/dialogs/quick_add_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AppDialogs {
  static final dialogBarrierColor = Colors.black.withValues(alpha: 0.65);

  static Future<NotificationModeResult?> showNotificationModeDialog(
    BuildContext context,
    NotificationsPreferences current,
  ) {
    return CoreDialogsUtil.showDialog(
      context,
      NotificationModeDialog(current: current),
      settings: const RouteSettings(name: NotificationModeDialog.routeName),
      barrierColor: dialogBarrierColor,
    );
  }

  static Future<bool?> showGroceryDeleteConfirmationDialog(BuildContext context, String groceryName) {
    return CoreDialogsUtil.showDialog(
      context,
      GroceryDeleteConfirmationDialog(groceryName: groceryName),
      settings: const RouteSettings(name: GroceryDeleteConfirmationDialog.routeName),
    );
  }

  static Future<String?> showQuickAddDialog(BuildContext context) {
    return CoreDialogsUtil.showDialog(
      context,
      const QuickAddDialog(),
      settings: const RouteSettings(name: QuickAddDialog.routeName),
      barrierColor: dialogBarrierColor,
    );
  }

  static Future<AppPermissionStatus> checkPermissionDialog(
    BuildContext context,
    AppPermissionType type,
  ) async {
    final permissionStatus = await type.check();
    if (permissionStatus.isAnyGranted) {
      return permissionStatus;
    }

    final isForcedSettings = permissionStatus.isDeniedForever;
    final result = await CoreDialogsUtil.showDialog<bool?>(
      context,
      GrantPermissionDialog(type: type, isForcedSettings: isForcedSettings),
      settings: const RouteSettings(name: GrantPermissionDialog.routeName),
      barrierColor: dialogBarrierColor,
    );
    if (result != true) return permissionStatus;

    if (!isForcedSettings) {
      return type.request();
    }

    await type.openSettings();
    return permissionStatus;
  }
}
