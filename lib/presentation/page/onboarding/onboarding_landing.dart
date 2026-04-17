import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/presentation/page/select_groceries/select_groceries_page.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:ui_kit/ui_kit.dart';

class AppOnboardingLanding extends StatelessWidget {
  const AppOnboardingLanding({super.key});

  void _onContinue(BuildContext context) {
    final controller = SubpagesScope.of(context);
    final page = SelectGroceriesPage(
      args: const SelectGroceriesPageArgs(isOnboarding: true),
      onBack: controller.goHome,
    );
    controller.navigateTo(page);
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingLanding(
      title: context.tr(LocaleKeys.welcome_title),
      subtitle: context.tr(LocaleKeys.welcome_onboarding_subtitle),
      bullets: [
        OnboardingLandingBullet(
          animationPath: AppAssets.groceriesAppAnimation,
          title: context.tr(LocaleKeys.welcome_bullet1_title),
          subtitle: context.tr(LocaleKeys.welcome_bullet1_subtitle),
          scaleAnimation: 1.08,
          padding: EdgeInsets.only(bottom: 32.h),
        ),
        OnboardingLandingBullet(
          animationPath: AppAssets.premiumChecklistAnimation,
          title: context.tr(LocaleKeys.welcome_bullet2_title),
          subtitle: context.tr(LocaleKeys.welcome_bullet2_subtitle),
          scaleAnimation: 0.9,
          padding: EdgeInsets.only(bottom: 32.h),
        ),
        OnboardingLandingBullet(
          animationPath: AppAssets.scrollingChecklistAnimation,
          title: context.tr(LocaleKeys.welcome_bullet3_title),
          subtitle: context.tr(LocaleKeys.welcome_bullet3_subtitle),
          scaleAnimation: 1.2,
          animationOffset: const Offset(2.0, 0.0),
          loopAnimation: true,
          padding: EdgeInsets.only(bottom: 32.h),
        ),
      ],
      ctaText: context.tr(LocaleKeys.welcome_cta),
      onCta: () => _onContinue(context),
    );
  }
}
