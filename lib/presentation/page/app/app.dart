// ignore_for_file: use_build_context_synchronously

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listox/di/env.dart';
import 'package:subscriptions/subscriptions.dart';
import 'package:listox/presentation/bloc/user_preferences/user_preferences_cubit.dart';
import 'package:app_core/app_core.dart' show AppPermissionType, DeviceInfo, PermissionsInjector, AppPermissionTypeX;
import 'package:listox/presentation/shared/constants/app_constants.dart';
import 'package:listox/presentation/shared/router/root_router.dart';
import 'package:listox/presentation/shared/utils/bottom_sheet_util.dart';
import 'package:listox/presentation/shared/utils/redirect_util.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/page/app/root_bloc_providers.dart';
import 'package:listox/presentation/page/app/root_bloc_listeners.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:listox/di/di.dart';
import 'package:ui_kit/ui_kit.dart' show CoreMaterialApp, UiKitNavigator;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const _designSize = Size(390.0, 844.0);

  static final _subscriptionsConfig = SubscriptionConfig(
    apiKeys: const SubscriptionApiKeys(
      apple: 'appl_hbwVsLvsZAddCuFRisLRFsWIcVO',
      google: '', // TBD
      test: 'test_wnJuVXZzvgQRRSSGkwjCEMGHPUk',
    ),
    productIds: const SubscriptionProductIds.monthly(
      monthly: 'denwee_listox_month',
      yearly: 'denwee_listox_year',
      trialPeriodDays: 3,
    ),
    entitlementId: 'premium',
    envPrefix: getIt<String>(instanceName: 'ENV_PREFIX'),
    isDebug: getIt<String>(instanceName: 'ENV') == Env.dev,
    termsUrl: AppConstants.termsOfUseUrl,
    privacyUrl: AppConstants.privacyPolicyUrl,
  );

  static const appPermissions = [
    AppPermissionType.notifications,
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: _designSize,
      child: SubscriptionScope(
        config: _subscriptionsConfig,
        child: PermissionsInjector(
          permissions: appPermissions,
          deviceInfo: getIt<DeviceInfo>(),
          child: RootBlocProviders(
            child: RootBlocListeners(
            child: Builder(
              builder: (context) {
                final themeColorationId = context.select<UserPreferencesCubit, String>(
                  (cubit) => cubit.state.preferences.theme.colorationId.value,
                );
                final themeMode = context.select<UserPreferencesCubit, ThemeMode>(
                  (cubit) => cubit.state.preferences.theme.mode,
                );

                return CoreMaterialApp(
                  themeColorationId: themeColorationId,
                  themeMode: themeMode,
                  onGenerateRoute: rootRouteFactory,
                  initialRoute: Routes.home,
                  locale: EasyLocalization.of(context)!.locale,
                  localizationsDelegates: EasyLocalization.of(context)!.delegates,
                  supportedLocales: EasyLocalization.of(context)!.supportedLocales,
                  onGenerateTitle: (context) => context.tr(LocaleKeys.appTitle),
                  isPremium: SubscriptionScope.of(context).isPremium,
                  onAppEnterCount: (count, isOnboarding) {
                    if (!isOnboarding &&
                        count % AppConstants.promptNotificationPermissionEachEnter == 0) {
                      Future.delayed(const Duration(milliseconds: 2000), () {
                        AppPermissionType.notifications.request();
                      });
                    }
                  },
                  onFreemiumEnterCount: (count) {
                    if (count % AppConstants.promptPaywallEachFreemiumEnter == 0) {
                      Future.delayed(const Duration(milliseconds: 1000), () {
                        AppBottomSheets.showPaywall(UiKitNavigator.context);
                      });
                    }
                  },
                  onInitialLocale: (systemLocale) {
                    final currentLocale = Locale(
                      getIt<UserPreferencesCubit>()
                          .state
                          .preferences
                          .language
                          .languageCode,
                    );
                    if (currentLocale != systemLocale) {
                      final supported =
                          EasyLocalization.of(UiKitNavigator.context)!.supportedLocales;
                      final changeLocale = supported.contains(systemLocale)
                          ? systemLocale
                          : AppConstants.fallbackLocale;
                      getIt<UserPreferencesCubit>().changeLanguage(changeLocale);
                    }
                  },
                  envPrefix: getIt<String>(instanceName: 'ENV_PREFIX'),
                  onDeeplink: getIt<RedirectUtil>().execute,
                );
              },
            ),
          ),
          ),
        ),
      ),
    );
  }
}
