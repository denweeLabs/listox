import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:ui_kit/src/constants/ui_kit_constants.dart';
import 'package:ui_kit/src/theme/text_styles.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:ui_kit/src/widgets/buttons/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSolidButton extends StatelessWidget {
  const AppSolidButton({
    super.key,
    required this.text,
    this.whenBusyText,
    this.buttonHeight,
    this.backgroundColor,
    this.textColor,
    this.shadowColor,
    this.onTap,
    this.isBusy = false,
    this.isDisabled = false,
    this.displayIcon,
    this.displayWidgetBuilder,
    this.isShimmering = false,
    this.isBubbles = false,
    this.hideShadow = false,
    this.width = double.infinity,
    this.padding,
    this.ignoreTapScale = false,
    this.isUpperCaseText = true,
    this.textStyle,
  });

  final String text;
  final String? whenBusyText;
  final double? buttonHeight;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? shadowColor;
  final VoidCallback? onTap;
  final bool isBusy;
  final bool isDisabled;
  final String? displayIcon;
  final Widget Function(Color)? displayWidgetBuilder;
  final bool isShimmering;
  final bool isBubbles;
  final bool hideShadow;
  final double? width;
  final EdgeInsets? padding;
  final bool ignoreTapScale;
  final bool isUpperCaseText;
  final TextStyle? textStyle;

  static final defaultHeight = 58.h;

  @override
  Widget build(BuildContext context) {
    final effectiveBackgroundColor = backgroundColor ?? context.theme.colorScheme.primary;
    final effectiveShadowColor = shadowColor ?? Colors.black54;
    final effectiveElavation = hideShadow || isDisabled ? 0.0 : 10.0;
    final disabledOpacity = context.isLightTheme ? 0.7 : 0.1;

    return SizedBox(
      width: width,
      height: buttonHeight ?? defaultHeight,
      child: BounceTapAnimation(
        onTap: isBusy || isDisabled ? null : () => onTap?.call(),
        child: PhysicalModel(
          clipBehavior: Clip.hardEdge,
          elevation: effectiveElavation,
          color: effectiveBackgroundColor.withValues(
            alpha: isDisabled ? disabledOpacity : 1.0,
          ),
          shadowColor: effectiveShadowColor,
          borderRadius: UiKitConstants.commonBorderRadius,
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: padding ?? EdgeInsets.zero,
                  child: _buildDisplayElementsSwitcher(context),
                ),
              ),
              if (isBubbles || (isBusy || isShimmering))
                _buildBackgroundAnimations(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDisplayElementsSwitcher(BuildContext context) {
    return ClipRRect(
      child: AnimatedSwitcherPlus.translationTop(
        offset: 4.0,
        duration: CustomAnimationDurations.ultraLow,
        switchInCurve: Curves.easeInOutQuad,
        switchOutCurve: Curves.easeInOutQuad,
        child: _buildDisplayElements(context),
      ),
    );
  }

  Widget _buildDisplayElements(BuildContext context) {
    final thisTextColor = textColor ?? context.lightTextColor;
    final thisTextStyle = textStyle ?? solidButton.copyWith(color: thisTextColor);

    if (displayIcon != null) {
      return CommonAppIcon(
        key: const ValueKey('solid_btn_icon'),
        path: displayIcon!,
        color: thisTextColor,
        size: 26,
      );
    }

    if (isBusy) {
      final busyText = whenBusyText ?? 'Loading...';
      return Material(
        type: MaterialType.transparency,
        key: const ValueKey('solid_btn_loading'),
        child: Text(
          busyText,
          style: thisTextStyle.copyWith(color: thisTextColor),
          textAlign: TextAlign.center,
          overflow: TextOverflow.fade,
          maxLines: 1,
        ),
      );
    }

    if (displayWidgetBuilder != null) {
      return SizedBox(
        key: const ValueKey('solid_btn_widget'),
        child: displayWidgetBuilder!(thisTextColor),
      );
    }

    return Material(
      type: MaterialType.transparency,
      key: ValueKey('w_$text'),
      child: Text(
        isUpperCaseText ? text.toUpperCase() : text,
        style: thisTextStyle.copyWith(color: thisTextColor),
        textAlign: TextAlign.center,
        overflow: TextOverflow.fade,
        maxLines: 1,
      ),
    );
  }

  Widget _buildBackgroundAnimations(BuildContext context) {
    return Positioned.fill(
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (isBubbles)
            const BubblesAnimation(
              bubblesCount: 8,
              opacity: 25,
            ),
          if (isBusy)
            const ShimmerAnimation(
              duration: CustomAnimationDurations.mediumHigh,
              interval: Duration.zero,
            )
          else if (isShimmering)
            const ShimmerAnimation(),
        ],
      ),
    );
  }
}
