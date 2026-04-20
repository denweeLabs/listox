import 'package:ui_kit/src/constants/ui_kit_assets.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/src/widgets/buttons/icon_button_widget.dart';

enum AppBackButtonType { arrow, cross }

extension AppBackButtonTypeX on AppBackButtonType {
  String get iconPath {
    switch (this) {
      case AppBackButtonType.arrow:
        return UiKitAssets.arrowLeftAndroid;
      case AppBackButtonType.cross:
        return UiKitAssets.cross;
    }
  }

  double get defaultSize {
    switch (this) {
      case AppBackButtonType.arrow:
        return 24.0;
      case AppBackButtonType.cross:
        return 18.0;
    }
  }
}

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
    this.onTap,
    this.color,
    this.type = AppBackButtonType.arrow,
    this.padding,
    this.size,
    this.useBackgroundContainer = true,
    this.brightness = AppIconButtonBrightness.adaptive,
  });

  final EdgeInsets? padding;
  final AppBackButtonType type;
  final VoidCallback? onTap;
  final Color? color;
  final double? size;
  final bool useBackgroundContainer;
  final AppIconButtonBrightness brightness;

  @override
  Widget build(BuildContext context) {
    return AppIconButton(
      onTap: onTap ?? Navigator.of(context).pop,
      iconPath: type.iconPath,
      size: size ?? type.defaultSize,
      color: color ?? context.iconColorSecondary,
      useBackgroundContainer: useBackgroundContainer,
      brightness: brightness,
    );
  }
}
