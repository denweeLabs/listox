import 'dart:math';

import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:subscriptions/subscriptions.dart';
import 'package:ui_kit/ui_kit.dart';

typedef HomeHeaderBuilder =
    Widget Function(BuildContext context, double scrollFraction);

class HomeHeaderDelegate extends SliverPersistentHeaderDelegate {
  const HomeHeaderDelegate({
    required this.maxExtent,
    required this.minExtent,
    required this.builder,
  });

  @override
  final double maxExtent;

  @override
  final double minExtent;

  final HomeHeaderBuilder builder;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final range = maxExtent - minExtent;
    final scrollFraction = range > 0
        ? (shrinkOffset / range).clamp(0.0, 1.0)
        : 0.0;
    return builder(context, scrollFraction);
  }

  @override
  // Rebuild whenever the delegate is replaced so badge counts stay in sync.
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration =>
      OverScrollHeaderStretchConfiguration();
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.tabController,
    required this.height,
    required this.topPadding,
    required this.thisWeekCount,
    required this.laterCount,
    required this.scrollFraction,
    required this.onAccount,
    this.tabBarKey,
  });

  final TabController tabController;
  final double height;
  final double topPadding;
  final int thisWeekCount;
  final int laterCount;
  final double scrollFraction;
  final VoidCallback onAccount;
  final GlobalKey? tabBarKey;

  static const headerBorderRadius = BorderRadius.vertical(
    bottom: Radius.circular(30),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          bottom: height / 2,
          child: _buildBackground(context),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: _buildTabBar(context),
        ),
        Positioned(
          right: 26.w,
          top: topPadding,
          child: _buildAccountButton(context),
        ),
      ],
    ).autoFadeIn();
  }

  Widget _buildBackground(BuildContext context) {
    final isPremium = SubscriptionScope.read(context).isPremium;
    final today = DateFormat('EEEE, MMMM d').format(DateTime.now()).toUpperCase();

    return Stack(
      children: [
        Positioned.fill(
          child: DecoratedBox(
            decoration: ShapeDecoration(
              gradient: AppColors.commonColoredGradient(context),
              shape: const RoundedSuperellipseBorder(
                borderRadius: headerBorderRadius,
              ),
            ),
          ),
        ),
        if (isPremium)
          const Positioned.fill(
            child: ClipRRect(
              borderRadius: headerBorderRadius,
              child: BubblesAnimation(),
            ),
          ),
        Positioned(
          top: topPadding,
          right: 26.w,
          left: 26.w,
          child: Align(
            alignment: Alignment.topLeft,
            child: _buildTitleContent(context, today),
          ),
        ),
      ],
    );
  }

  Widget _buildTitleContent(BuildContext context, String today) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: max(0.0, 1 - 1.0 * scrollFraction),
          child: Text(
            today,
            style: h7.copyWith(
              letterSpacing: 0.7,
              fontWeight: FontWeight.w900,
              color: context.darkIconColor.withValues(alpha: 0.3),
            ),
          ),
        ),
        2.verticalSpace,
        SizedBox(
          width: 0.6.sw,
          child: Opacity(
            opacity: max(0.0, 1 - 2.0 * scrollFraction),
            child: Text(
              context.tr(LocaleKeys.home_header_title),
              style: h1.copyWith(
                fontWeight: FontWeight.w800,
                color: context.lightTextColor,
                height: 1.3,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        key: tabBarKey,
        height: height,
        child: PhysicalModel(
          elevation: 8.0,
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          shadowColor: Colors.black45,
          color: context.primaryContainer,
          child: _AnimatedTabBar(
            tabController: tabController,
            thisWeekCount: thisWeekCount,
            laterCount: laterCount,
            height: height,
          ),
            ),
      ),
    );
  }

  Widget _buildAccountButton(BuildContext context) {
    return Transform.scale(
      scale: max(
        0.0,
        1 - 1.5 * Curves.easeInToLinear.transform(scrollFraction),
      ),
      child: AppIconButton(
        iconPath: AppAssets.userLinear,
        color: context.lightIconColor,
        brightness: AppIconButtonBrightness.light,
        onTap: onAccount,
        size: 20,
      ),
    );
  }
}

class _AnimatedTabBar extends StatelessWidget {
  const _AnimatedTabBar({
    required this.tabController,
    required this.thisWeekCount,
    required this.laterCount,
    required this.height,
  });

  final TabController tabController;
  final int thisWeekCount;
  final int laterCount;
  final double height;

  static const _margin = 4.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: tabController.animation!,
      builder: (context, _) {
        final t =
            tabController.animation!.value; // 0.0 = This Week, 1.0 = Later

        final selectedColor = context.lightTextColor;
        final unselectedColor = context.textColor;
        final selectedBadgeBg = Colors.white.withValues(alpha: 0.95);
        final unselectedBadgeBg = context.theme.colorScheme.secondary
            .withValues(alpha: 0.1);

        final tab0LabelColor = Color.lerp(selectedColor, unselectedColor, t)!;
        final tab1LabelColor = Color.lerp(unselectedColor, selectedColor, t)!;
        final tab0BadgeBg = Color.lerp(selectedBadgeBg, unselectedBadgeBg, t)!;
        final tab1BadgeBg = Color.lerp(unselectedBadgeBg, selectedBadgeBg, t)!;

        return LayoutBuilder(
          builder: (context, constraints) {
            final pillWidth = constraints.maxWidth * 0.5 - _margin;
            final pillTravel = constraints.maxWidth - pillWidth - _margin * 2;
            final pillLeft = _margin + pillTravel * t;

            return Stack(
              children: [
                // Sliding pill
                Positioned(
                  left: pillLeft,
                  top: _margin,
                  bottom: _margin,
                  width: pillWidth,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: context.theme.colorScheme.primary,
                    ),
                  ),
                ),
                // Tab labels
                Row(
                  children: [
                    Expanded(
                      child: TapFadeAnimation(
                        onTap: () => tabController.animateTo(0),
                        child: Center(
                          child: _TabItem(
                            label: context.tr(LocaleKeys.home_tab_this_week),
                            count: thisWeekCount,
                            labelColor: tab0LabelColor,
                            badgeBg: tab0BadgeBg,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TapFadeAnimation(
                        onTap: () => tabController.animateTo(1),
                        child: Center(
                          child: _TabItem(
                            label: context.tr(LocaleKeys.home_tab_later),
                            count: laterCount,
                            labelColor: tab1LabelColor,
                            badgeBg: tab1BadgeBg,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _TabItem extends StatelessWidget {
  const _TabItem({
    required this.label,
    required this.count,
    required this.labelColor,
    required this.badgeBg,
  });

  final String label;
  final int count;
  final Color labelColor;
  final Color badgeBg;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: h6.copyWith(color: labelColor)),
        SizedBox(width: 6.w),
        SizedBox.square(
          dimension: 20,
          child: PhysicalModel(
            color: badgeBg,
            shape: BoxShape.circle,
            child: Center(
              child: AnimatedSwitcherPlus.flipY(
                duration: CustomAnimationDurations.ultraLow,
                switchInCurve: Curves.easeInOutSine,
                switchOutCurve: Curves.easeInOutSine,
                child: count <= 0
                    ? CommonAppRawIcon(
                        path: AppAssets.checkmarkLinear,
                        color: context.theme.colorScheme.primary,
                        size: 12,
                      )
                    : AnimatedNumber(
                        number: count,
                        style: bodyS.copyWith(
                          color: context.theme.colorScheme.primary,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.3,
                        ),
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
