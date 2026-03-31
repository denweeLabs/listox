import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/src/constants/ui_kit_assets.dart';
import 'package:ui_kit/src/widgets/account/coloration_item_bubble_widget.dart';
import 'package:ui_kit/ui_kit.dart';

class ColorationOverviewSelector extends StatefulWidget {
  const ColorationOverviewSelector({
    super.key,
    required this.selectedColorationId,
    required this.onChanged,
  });

  final String selectedColorationId;
  final ValueChanged<String> onChanged;

  static final height = 130.h;

  @override
  State<ColorationOverviewSelector> createState() =>
      _ColorationOverviewSelectorState();
}

class _ColorationOverviewSelectorState
    extends State<ColorationOverviewSelector> {
  static final bubbleSize = (ColorationOverviewSelector.height / 1.9);
  static const viewportFraction = 0.33;

  static const borderRadius = BorderRadius.all(Radius.circular(24));

  late final PageController pageController;

  @override
  void initState() {
    final pageIndex = UiKitConfig.themeColorations.indexWhere(
      (e) => e.id == widget.selectedColorationId,
    );
    pageController = PageController(
      viewportFraction: viewportFraction,
      initialPage: pageIndex,
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.fromHeight(ColorationOverviewSelector.height),
      child: DecoratedBox(
        decoration: ShapeDecoration(
          gradient: AppColors.commonColoredGradient(context),
          shape: const RoundedSuperellipseBorder(borderRadius: borderRadius),
          shadows: [
            BoxShadow(
              color: context.theme.colorScheme.primary,
              offset: const Offset(0.0, 20.0),
              spreadRadius: -25.0,
              blurRadius: 30.0,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              right: -18.w,
              bottom: -14.w,
              child: CommonAppIcon(
                path: UiKitAssets.brush,
                color: context.darkPrimaryContainer.withValues(alpha: 0.08),
                size: 128,
              ),
            ),
            PageView.builder(
              controller: pageController,
              onPageChanged: _onPageChanged,
              itemCount: UiKitConfig.themeColorations.length,
              itemBuilder: (context, index) {
                final coloration = UiKitConfig.themeColorations[index];
                final isSelected = widget.selectedColorationId == coloration.id;

                return ColorationItemBubble(
                  size: bubbleSize,
                  index: index,
                  offset: Offset.zero,
                  coloration: coloration,
                  isSelected: isSelected,
                  onTap: (_) => _animateTo(index),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _animateTo(int index) {
    pageController.animateToPage(
      index,
      duration: CustomAnimationDurations.low,
      curve: CustomAnimationCurves.fasterEaseInToSlowEaseOut,
    );
  }

  void _onPageChanged(int index) {
    CoreHapticUtil.light();
    widget.onChanged(UiKitConfig.themeColorations[index].id);
  }
}
