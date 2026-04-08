import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:ui_kit/src/theme/text_styles.dart';

class OnboardingLandingBullet extends StatelessWidget {
  const OnboardingLandingBullet({
    super.key,
    required this.animationPath,
    required this.title,
    required this.subtitle,
    this.scaleAnimation = 1.0,
    this.loopAnimation = false,
    this.padding,
    this.animationOffset = Offset.zero,
  });

  final String animationPath;
  final String title;
  final String subtitle;
  final double scaleAnimation;
  final bool loopAnimation;
  final EdgeInsets? padding;
  final Offset animationOffset;

  static final animationSize = 80.w;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(bottom: 28.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: animationSize,
            height: animationSize,
            child: Transform.translate(
              offset: animationOffset,
              child: Transform.scale(
                scale: scaleAnimation,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: LottieAnimation(
                    path: animationPath,
                    repeat: loopAnimation,
                  ),
                ),
              ),
            ),
          ),
          12.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: h5.copyWith(
                    fontSize: 17.sp,
                    color: context.textColor,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.4,
                    height: 0.0,
                  ),
                ),
                4.verticalSpace,
                Text(
                  subtitle,
                  style: bodyL.copyWith(
                    color: context.textColorSecondary,
                    letterSpacing: -0.25,
                    height: 0.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
