import 'package:easy_localization/easy_localization.dart';
import 'package:app_core/app_core.dart' show AppPermissionType;
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

extension _AppPermissionTypeX on AppPermissionType {
  String dialogTitle(BuildContext context) => switch (this) {
        AppPermissionType.notifications =>
          context.tr(LocaleKeys.dialog_permission_notifications_title),
        _ => '',
      };

  String dialogSubtitle(BuildContext context, bool isForcedToSettings) =>
      switch (this) {
        AppPermissionType.notifications => isForcedToSettings
            ? context.tr(LocaleKeys.dialog_permission_notifications_subtitle_settings)
            : context.tr(LocaleKeys.dialog_permission_notifications_subtitle),
        _ => '',
      };

  String get decorationIcon => switch (this) {
        AppPermissionType.notifications => AppAssets.notificationsLinear,
        _ => '',
      };
}

class GrantPermissionDialog extends StatelessWidget {
  const GrantPermissionDialog({
    super.key,
    required this.type,
    required this.isForcedSettings,
  });

  static const routeName = 'GrantPermissionDialog';

  final AppPermissionType type;
  final bool isForcedSettings;

  @override
  Widget build(BuildContext context) {
    return CoreDialog.confirmation(
      isIconShimmering: true,
      decorationIcon: type.decorationIcon,
      title: type.dialogTitle(context),
      subtitle: type.dialogSubtitle(context, isForcedSettings),
      okButton: CoreDialogButton(
        isForcedSettings ? AppAssets.settingsLinear : AppAssets.checkmarkLinear,
        () => Navigator.of(context).pop(true),
        size: isForcedSettings ? 22.0 : CoreDialogButton.iconSize,
      ),
      cancelButton: CoreDialogButton.cross(Navigator.of(context).pop),
    );
  }
}
