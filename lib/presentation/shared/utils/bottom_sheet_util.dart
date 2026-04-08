// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:listox/di/di.dart';
import 'package:listox/presentation/bloc/search_groceries/search_groceries_cubit.dart';
import 'package:listox/presentation/bloc/select_groceries/select_groceries_cubit.dart';
import 'package:listox/presentation/bloc/user_preferences/user_preferences_cubit.dart';
import 'package:listox/presentation/page/onboarding/onboarding_landing.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:subscriptions/subscriptions.dart';
import 'package:ui_kit/ui_kit.dart';

class AppBottomSheets {
  static Future<List<GroceryTemplate>?> showOnboardingIfNeeded({
    required BuildContext context,
    required bool Function() isMounted,
    Duration showDelay = const Duration(milliseconds: 600),
  }) async {
    final envPrefix = getIt<String>(instanceName: 'ENV_PREFIX');
    final isOnboarding = await CoreMaterialApp.readIsOnboarding(
      envPrefix: envPrefix,
    );
    if (!isOnboarding || !isMounted()) return null;

    await Future<void>.delayed(showDelay);
    if (!isMounted()) return null;

    final result = await showOnboarding(context);
    if (!isMounted() || result == null) return null;

    unawaited(CoreMaterialApp.completeOnboarding(context));

    return result;
  }
  
  static Future<List<GroceryTemplate>?> showOnboarding(BuildContext context) {
    return showOnboardingSheet(
      context,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<SelectGroceriesCubit>()),
          BlocProvider(create: (_) => getIt<SearchGroceriesCubit>()),
        ],
        child: child,
      ),
      home: const AppOnboardingLanding(),
    );
  }

  static Future<void> showPaywall(BuildContext context) {
    final theme = PaywallTheme.fromTheme(
      theme: Theme.of(context),
      iconColor: context.iconColor,
      textColor: context.textColor,
      textColorSecondary: context.textColorSecondary,
    );

    final locale =
        getIt<UserPreferencesCubit>().state.preferences.language.languageCode;

    return showSubscriptionPaywallBottomSheet(
      context,
      mediaQuery: MediaQuery.of(context),
      topAnimation: Padding(
        padding: EdgeInsets.only(top: context.topPadding + 32.h),
        child: SizedBox(
          height: 0.2.sh,
          width: double.infinity,
          child: const LottieAnimation(
            path: AppAssets.premiumChecklistAnimation,
            animationStart: 0.04,
          ),
        ),
      ),
      bulletPoints: [
        PaywallBulletPoint(
          icon: UiKitIcons.check,
          text: context.tr(LocaleKeys.paywall_bullet1),
        ),
        PaywallBulletPoint(
          icon: UiKitIcons.clipboard,
          text: context.tr(LocaleKeys.paywall_bullet2),
        ),
        PaywallBulletPoint(
          icon: UiKitIcons.shoppingCart,
          text: context.tr(LocaleKeys.paywall_bullet3),
        ),
      ],
      theme: theme,
      locale: locale,
    );
  }
}
