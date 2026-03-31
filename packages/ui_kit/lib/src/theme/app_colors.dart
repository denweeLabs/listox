import 'package:ui_kit/src/config/ui_kit_config.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppColors {
  /// Background
  static Map<ThemeType, Color> get primaryBackground => {
    ThemeType.light: UiKitConfig.lightColors?.backgroundColor ?? const Color(0xFFF8FCFF),
    ThemeType.dark: UiKitConfig.darkColors?.backgroundColor ?? const Color(0xFF1F2E4E),
  };

  /// Text
  static Map<ThemeType, Color> get text => {
    ThemeType.light: UiKitConfig.lightColors?.text ?? const Color(0xFF45536c),
    ThemeType.dark: UiKitConfig.darkColors?.text ?? Colors.white,
  };
  static Map<ThemeType, Color> get textSecondary => {
    ThemeType.light: UiKitConfig.lightColors?.textSecondary ?? const Color(0x9945536c),
    ThemeType.dark: UiKitConfig.darkColors?.textSecondary ?? const Color(0x99d4d9df),
  };
  static Map<ThemeType, Color> get textTernary => {
    ThemeType.light: UiKitConfig.lightColors?.textTernary ?? const Color(0x6645536c),
    ThemeType.dark: UiKitConfig.darkColors?.textTernary ?? const Color(0x66d4d9df),
  };

  /// Icon
  static Map<ThemeType, Color> get icon => {
    ThemeType.light: UiKitConfig.lightColors?.icon ?? const Color(0xFF172748),
    ThemeType.dark: UiKitConfig.darkColors?.icon ?? const Color(0xFFFFF8F8),
  };
  static Map<ThemeType, Color> get iconSecondary => {
    ThemeType.light: UiKitConfig.lightColors?.iconSecondary ?? const Color(0x99172748),
    ThemeType.dark: UiKitConfig.darkColors?.iconSecondary ?? const Color(0x99FFFFFF),
  };
  static Map<ThemeType, Color> get iconTernary => {
    ThemeType.light: UiKitConfig.lightColors?.iconTernary ?? const Color(0x66172748),
    ThemeType.dark: UiKitConfig.darkColors?.iconTernary ?? const Color(0x66FFFFFF),
  };

  /// Containers
  static Map<ThemeType, Color> get primaryContainer => {
    ThemeType.light: UiKitConfig.lightColors?.primaryContainer ?? const Color(0xFFFBFDFE),
    ThemeType.dark: UiKitConfig.darkColors?.primaryContainer ?? const Color(0xFF283A60),
  };
  static Map<ThemeType, Color> get secondaryContainer => {
    ThemeType.light: UiKitConfig.lightColors?.secondaryContainer ?? const Color(0xFFE9E9E9),
    ThemeType.dark: UiKitConfig.darkColors?.secondaryContainer ?? const Color(0xFF202634),
  };

  /// Misc
  static Map<ThemeType, Color> get divider => {
    ThemeType.light: UiKitConfig.lightColors?.divider ?? const Color(0x10000000),
    ThemeType.dark: UiKitConfig.darkColors?.divider ?? const Color(0xFF253B54),
  };
  static Map<ThemeType, Color> get shadow => {
    ThemeType.light: UiKitConfig.lightColors?.shadow ?? const Color(0x42000000),
    ThemeType.dark: UiKitConfig.darkColors?.shadow ?? const Color(0x42000000),
  };

  static const lightGreen = Color(0xFF5CB75F);
  static const lightRed = Color(0xFFEB5A5A);
  static const white01 = Color(0x03FFFFFF);
  static const white02 = Color(0x05FFFFFF);
  static const white04 = Color(0x0AFFFFFF);
  static const white06 = Color(0x0FFFFFFF);
  static const white08 = Color(0x14FFFFFF);
  static const black02 = Color(0x05000000);
  static const black04 = Color(0x0A000000);
  static const black06 = Color(0x0F000000);
  static const black08 = Color(0x14000000);
  static const black10 = Color(0x1A000000);
  static const dialogShadow = Colors.black54;

  static LinearGradient commonColoredGradient(
    BuildContext context, {
    Color? color1,
    Color? color2,
  }) => LinearGradient(
    colors: [
      color1 ?? context.theme.colorScheme.primary,
      color2 ?? context.theme.colorScheme.secondary,
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    stops: const [0.0, 0.9],
  );

  static LinearGradient commonColoredGradientReversed(BuildContext context) =>
      LinearGradient(
        colors: [
          context.theme.colorScheme.secondary,
          context.theme.colorScheme.primary,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );
}
