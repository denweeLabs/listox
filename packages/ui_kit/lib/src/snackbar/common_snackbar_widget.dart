import 'package:ui_kit/src/constants/ui_kit_assets.dart';
import 'package:ui_kit/src/theme/app_colors.dart';
import 'package:ui_kit/src/snackbar/core_global_snackbar_widget.dart';
import 'package:flutter/material.dart';

class CommonSnackbar extends StatelessWidget {
  const CommonSnackbar({
    super.key,
    this.iconPath,
    this.title,
    this.description,
    this.backgroundColor,
  });

  const CommonSnackbar.error({
    String? title,
    String? description,
    String? iconPath,
    Key? key,
  }) : this(
         key: key,
         backgroundColor: AppColors.lightRed,
         iconPath: iconPath ?? UiKitAssets.alert,
         title: title,
         description: description,
       );

  const CommonSnackbar.success({
    String? title,
    String? description,
    String? iconPath,
    Key? key,
  }) : this(
         key: key,
         backgroundColor: AppColors.lightGreen,
         iconPath: iconPath ?? UiKitAssets.verify,
         title: title,
         description: description,
       );

  final String? iconPath;
  final String? title;
  final String? description;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CoreSnackbar(
      backgroundColor: backgroundColor,
      iconPath: iconPath,
      title: title,
      description: description,
    );
  }
}
