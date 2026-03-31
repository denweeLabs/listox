import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:ui_kit/ui_kit.dart';

void startHomeTutorial({
  required BuildContext context,
  required GlobalKey tabBarKey,
  required VoidCallback onFinish,
}) {
  TutorialCoachMark(
    targets: [
      TargetFocus(
        identify: 'tab_bar',
        keyTarget: tabBarKey,
        shape: ShapeLightFocus.RRect,
        radius: 30.r,
        paddingFocus: 0,
        enableOverlayTab: true,
        enableTargetTab: true,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            padding: EdgeInsets.zero,
            builder: (_, _) => const _TabBarContent(),
          ),
        ],
      ),
    ],
    colorShadow: Colors.black,
    opacityShadow: 0.85,
    paddingFocus: 6,
    focusAnimationDuration: const Duration(milliseconds: 500),
    unFocusAnimationDuration: const Duration(milliseconds: 350),
    pulseEnable: false,
    useSafeArea: false,
    skipWidget: const _SkipButton(),
    onSkip: () {
      onFinish();
      return true;
    },
    textStyleSkip: h5.copyWith(color: Colors.white70),
    onFinish: onFinish,
  ).show(context: context);
}

class _TabBarContent extends StatelessWidget {
  const _TabBarContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          32.verticalSpace,
          Text(
            context.tr(LocaleKeys.tutorial_schedule_heading),
            style: h7.copyWith(
              color: Colors.white.withValues(alpha: 0.5),
              letterSpacing: 1.1,
              fontWeight: FontWeight.w800,
            ),
          ),
          32.verticalSpace,
          _CoachHighlight(
            label: context.tr(LocaleKeys.home_tab_this_week),
            body: context.tr(LocaleKeys.tutorial_this_week_body),
          ).autoFadeInLeft(sequencePos: 1),
          28.verticalSpace,
          _CoachHighlight(
            label: context.tr(LocaleKeys.home_tab_later),
            body: context.tr(LocaleKeys.tutorial_later_body),
          ).autoFadeInLeft(sequencePos: 2)
        ],
      ),
    );
  }
}

class _CoachHighlight extends StatelessWidget {
  const _CoachHighlight({required this.label, required this.body});

  final String label;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: h4.copyWith(color: Colors.white, fontWeight: FontWeight.w800),
        ),
        6.verticalSpace,
        Text(body, style: bodyM.copyWith(color: Colors.white70, height: 1.5)),
      ],
    );
  }
}

class _SkipButton extends StatelessWidget {
  const _SkipButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: context.bottomPadding + 14.h,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: IgnorePointer(
          child: TextButton(
            onPressed: () {},
            child: Text(
              context.tr(LocaleKeys.tutorial_skip),
              style: h6.copyWith(
                letterSpacing: 0.5,
                color: Colors.white54,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
