import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/src/extensions/build_context_extensions.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:ui_kit/src/theme/text_styles.dart';
import 'package:ui_kit/src/widgets/buttons/app_solid_button_widget.dart';
import 'package:ui_kit/src/widgets/onboarding/onboarding_landing_bullet_widget.dart';

class OnboardingLanding extends StatelessWidget {
  const OnboardingLanding({
    super.key,
    required this.title,
    required this.subtitle,
    required this.bullets,
    required this.ctaText,
    this.onCta,
  });

  final String title;
  final String subtitle;
  final List<OnboardingLandingBullet> bullets;
  final String ctaText;
  final VoidCallback? onCta;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 0.085.sh),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text(
                  title,
                  style: h0.copyWith(color: context.textColor),
                  textAlign: TextAlign.center,
                ),
              ),
              12.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text(
                  subtitle,
                  style: bodyL.copyWith(
                    color: context.textColorTernary,
                    letterSpacing: -0.2,
                    height: 0.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 38.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: bullets,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 48.w),
          child: AppSolidButton(
            isBubbles: true,
            text: ctaText,
            textColor: context.lightTextColor,
            onTap: onCta,
          ),
        ),
        SizedBox(height: context.bottomPadding + 28.h),
      ],
    );
  }
}
