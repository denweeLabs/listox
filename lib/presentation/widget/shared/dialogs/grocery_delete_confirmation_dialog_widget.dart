import 'package:easy_localization/easy_localization.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class GroceryDeleteConfirmationDialog extends StatelessWidget {
  const GroceryDeleteConfirmationDialog({super.key, required this.groceryName});

  final String groceryName;

  static const routeName = 'GroceryDeleteConfirmationDialog';

  @override
  Widget build(BuildContext context) {
    return CoreDialog.confirmation(
      decorationIcon: AppAssets.trashLinear,
      backgroundDecorationIcon: AppAssets.trashLinear,
      title: context.tr(LocaleKeys.dialog_delete_grocery_title),
      subtitle: context.tr(LocaleKeys.dialog_delete_grocery_subtitle, namedArgs: {'name': groceryName}),
      cancelButton: CoreDialogButton.cross(Navigator.of(context).pop),
      okButton: CoreDialogButton(
        AppAssets.trashLinear,
        () => Navigator.of(context).pop(true),
        color: context.theme.colorScheme.error,
        size: 22.0,
      ),
    );
  }
}
