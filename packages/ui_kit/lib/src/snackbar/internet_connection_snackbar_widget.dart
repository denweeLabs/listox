import 'package:ui_kit/src/constants/ui_kit_assets.dart';
import 'package:ui_kit/src/snackbar/common_snackbar_widget.dart';
import 'package:flutter/material.dart';

class InternetConnectionSnackbar extends StatelessWidget {
  const InternetConnectionSnackbar({
    super.key,
    this.title,
    this.description,
  });

  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return CommonSnackbar.error(
      iconPath: UiKitAssets.globe,
      title: title ?? 'No connection',
      description: description ?? 'Please check your internet connection',
    );
  }
}
