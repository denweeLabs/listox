// ignore_for_file: unused_element_parameter

part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _OverlayRestyle extends StatelessWidget {
  const _OverlayRestyle({
    super.key,
    required this.child,
    this.navigationBarColor,
    this.systemNavigationBarContrastEnforced,
  });

  final Widget child;
  final Color? navigationBarColor;
  final bool? systemNavigationBarContrastEnforced;

  static SystemUiOverlayStyle commonLightStyle(
    BuildContext context, {
    Color? navigationBarColor,
    Color? backgroundColor,
    bool? systemNavigationBarContrastEnforced,
  }) {
    final theme = Theme.of(context);

    return SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor:
          navigationBarColor ?? (backgroundColor ?? theme.colorScheme.surface),
      systemNavigationBarDividerColor:
          navigationBarColor ?? (backgroundColor ?? theme.colorScheme.surface),
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemStatusBarContrastEnforced: false,
      systemNavigationBarContrastEnforced: systemNavigationBarContrastEnforced,
    );
  }

  static SystemUiOverlayStyle commonDarkStyle(
    BuildContext context, {
    Color? navigationBarColor,
    Color? backgroundColor,
    bool? systemNavigationBarContrastEnforced,
  }) {
    final theme = Theme.of(context);

    return SystemUiOverlayStyle.dark.copyWith(
      systemNavigationBarColor:
          navigationBarColor ?? (backgroundColor ?? theme.colorScheme.surface),
      systemNavigationBarDividerColor:
          navigationBarColor ?? (backgroundColor ?? theme.colorScheme.surface),
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
      systemStatusBarContrastEnforced: false,
      systemNavigationBarContrastEnforced: systemNavigationBarContrastEnforced,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;

    return AnnotatedRegion(
      value: isLight
          ? _OverlayRestyle.commonLightStyle(
              context,
              navigationBarColor: navigationBarColor,
              systemNavigationBarContrastEnforced:
                  systemNavigationBarContrastEnforced,
            )
          : _OverlayRestyle.commonDarkStyle(
              context,
              navigationBarColor: navigationBarColor,
              systemNavigationBarContrastEnforced:
                  systemNavigationBarContrastEnforced,
            ),
      child: child,
    );
  }
}
