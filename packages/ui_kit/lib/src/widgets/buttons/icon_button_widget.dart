import 'package:ui_kit/src/constants/ui_kit_constants.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:ui_kit/src/widgets/buttons/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/src/widgets/misc/surface_container_widget.dart';

enum AppIconButtonBrightness { adaptive, light, dark, solid }

extension AppIconButtonBrightnessX on AppIconButtonBrightness {
  Color backgroundContainerColor(BuildContext context) {
    switch (this) {
      case AppIconButtonBrightness.adaptive:
        return context.iconColor.withValues(alpha: .04);
      case AppIconButtonBrightness.light:
        return context.lightIconColor.withValues(alpha: .12);
      case AppIconButtonBrightness.dark:
        return context.darkIconColor.withValues(alpha: .05);
      case AppIconButtonBrightness.solid:
        return context.primaryContainer;
    }
  }
}

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.iconPath,
    this.onTap,
    this.size = 18,
    this.color,
    this.backgroundColor,
    this.backgroundHoverColor,
    this.padding,
    this.ignoreIconColor = false,
    this.useBackgroundContainer = true,
    this.brightness = AppIconButtonBrightness.adaptive,
    this.elevation = 3,
  });

  final String iconPath;
  final VoidCallback? onTap;
  final double size;
  final Color? color;
  final Color? backgroundColor;
  final Color? backgroundHoverColor;
  final EdgeInsets? padding;
  final bool ignoreIconColor;
  final bool useBackgroundContainer;
  final AppIconButtonBrightness brightness;
  final double elevation;

  static const containerSize = Size.square(48);

  @override
  Widget build(BuildContext context) {
    if (!useBackgroundContainer) {
      return BounceTapAnimation(
        onTap: onTap,
        child: SizedBox.fromSize(
          size: containerSize,
          child: CommonAppIcon(
            size: size,
            color: color ?? context.iconColorSecondary,
            path: iconPath,
          ),
        ),
      );
    }

    return SurfaceContainer.ellipse(
      onTap: onTap,
      borderRadius: UiKitConstants.commonBorderRadius,
      color: backgroundColor ?? brightness.backgroundContainerColor(context),
      hoverColor: backgroundHoverColor ?? brightness.backgroundContainerColor(context),
      elevation: brightness == AppIconButtonBrightness.solid ? elevation : 0.0,
      size: containerSize,
      showBorder: false,
      child: Center(
        child: CommonAppIcon(
          size: size,
          color: color ?? context.iconColorSecondary,
          path: iconPath,
        ),
      ),
    );
  }
}