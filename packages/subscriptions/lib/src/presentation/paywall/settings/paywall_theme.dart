import 'package:flutter/material.dart';

@immutable
class PaywallTheme {
  static const defaultDarkBackground = Color.fromARGB(255, 28, 28, 43);
  static const defaultLightBackground = Color.fromARGB(255, 249, 250, 254);
  
  const PaywallTheme({
    required this.backgroundColor,
    required this.primaryContainer,
    required this.secondaryContainer,
    required this.iconColor,
    required this.textColor,
    required this.textColorSecondary,
    required this.primaryAccentColor,
    required this.secondaryAccentColor,
    required this.borderColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(14)),
  });

  final Color backgroundColor;
  final Color primaryContainer;
  final Color secondaryContainer;
  final Color iconColor;
  final Color textColor;
  final Color textColorSecondary;
  final Color primaryAccentColor;
  final Color secondaryAccentColor;
  final Color borderColor;
  final BorderRadius borderRadius;

  factory PaywallTheme.fromTheme({
    required ThemeData theme,
    Color? backgroundColor,
    Color? primaryContainer,
    Color? secondaryContainer,
    required Color iconColor,
    required Color textColor,
    required Color textColorSecondary,
    Color? primaryAccentColor,
    Color? secondaryAccentColor,
    Color? borderColor,
  }) {
    final isLightTheme = theme.brightness == Brightness.light;
    final effectiveBackgroundColor =
        backgroundColor ??
        (isLightTheme ? defaultLightBackground : defaultDarkBackground);

    return PaywallTheme(
      backgroundColor: effectiveBackgroundColor,
      primaryContainer: primaryContainer ?? effectiveBackgroundColor,
      secondaryContainer:
          secondaryContainer ?? theme.colorScheme.secondaryContainer,
      iconColor: iconColor,
      textColor: textColor,
      textColorSecondary: textColorSecondary,
      primaryAccentColor: theme.colorScheme.primary,
      secondaryAccentColor: theme.colorScheme.secondary,
      borderColor: borderColor ?? iconColor.withValues(alpha: 0.2),
    );
  }
}
