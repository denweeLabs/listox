import 'package:flutter/material.dart';
import 'package:ui_kit/src/app/core_app_deeplinks_listener.dart';
import 'package:ui_kit/src/app/core_app_storage.dart';
import 'package:ui_kit/src/app/core_app_wrapper.dart';
import 'package:ui_kit/src/app/ui_kit_navigator.dart';
import 'package:ui_kit/src/config/ui_kit_config.dart';
import 'package:ui_kit/src/snackbar/core_global_snackbar_widget.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:ui_kit/src/theme/theme_coloration.dart';

class CoreMaterialApp extends StatelessWidget {
  const CoreMaterialApp({
    super.key,
    required this.themeColorationId,
    required this.themeMode,
    required this.onGenerateRoute,
    this.initialRoute,
    this.restorationScopeId = 'app',
    this.locale,
    this.localizationsDelegates,
    this.supportedLocales = const [Locale('en')],
    this.onGenerateTitle,
    required this.isPremium,
    this.onAppEnterCount,
    this.onFreemiumEnterCount,
    this.onInitialLocale,
    this.envPrefix,
    this.onDeeplink,
    this.builder,
  });

  final String? themeColorationId;
  final ThemeMode themeMode;
  final RouteFactory? onGenerateRoute;
  final String? initialRoute;
  final String restorationScopeId;
  final Locale? locale;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Iterable<Locale> supportedLocales;
  final GenerateAppTitle? onGenerateTitle;
  final bool isPremium;
  final void Function(int count, bool isOnboarding)? onAppEnterCount;
  final void Function(int count)? onFreemiumEnterCount;
  final void Function(Locale locale)? onInitialLocale;
  final String? envPrefix;
  final void Function(Uri)? onDeeplink;
  final TransitionBuilder? builder;

  static Future<bool> readIsOnboarding({String? envPrefix}) =>
      CoreAppStorage.readIsOnboarding(envPrefix: envPrefix);

  static bool isOnboarding(BuildContext context) =>
      CoreAppWrapper.isOnboarding(context);

  static Future<void> completeOnboarding(BuildContext context) =>
      CoreAppWrapper.completeOnboarding(context);

  ThemeColoration _resolveColoration() {
    if (themeColorationId != null && UiKitConfig.themeColorations.isNotEmpty) {
      return UiKitConfig.themeColorations.firstWhere(
        (c) => c.id == themeColorationId,
        orElse: () => UiKitConfig.themeColorations.first,
      );
    }
    return UiKitConfig.themeColorations.isNotEmpty
        ? UiKitConfig.themeColorations.first
        : const ThemeColoration(
            id: '-1',
            primary: Color(0xFF08A5CC),
            secondary: Color(0xFF03CBA6),
          );
  }

  @override
  Widget build(BuildContext context) {
    if (locale != null) UiKitConfig.setCurrentLocale(locale!.languageCode);
    final coloration = _resolveColoration();

    return MaterialApp(
      restorationScopeId: restorationScopeId,
      debugShowCheckedModeBanner: false,
      locale: locale,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      onGenerateTitle: onGenerateTitle,
      themeAnimationDuration: const Duration(milliseconds: 400),
      themeAnimationCurve: Curves.fastEaseInToSlowEaseOut,
      theme: AppTheme.fromType(ThemeType.light).themeData(coloration),
      darkTheme: AppTheme.fromType(ThemeType.dark).themeData(coloration),
      themeMode: themeMode,
      initialRoute: initialRoute,
      navigatorKey: UiKitNavigator.key,
      onGenerateRoute: onGenerateRoute,
      builder: (context, child) {
        Widget content = CoreAppWrapper(
          isPremium: isPremium,
          onAppEnterCount: onAppEnterCount,
          onFreemiumEnterCount: onFreemiumEnterCount,
          onInitialLocale: onInitialLocale,
          envPrefix: envPrefix,
          child: CoreAppDeeplinksListener(
            onRedirect: onDeeplink,
            child: child!,
          ),
        );

        if (builder != null) content = builder!(context, content);

        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
          child: GlobalSnackbarInjector(child: content),
        );
      },
    );
  }
}
