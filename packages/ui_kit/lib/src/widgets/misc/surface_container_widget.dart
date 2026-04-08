import 'package:ui_kit/src/constants/ui_kit_constants.dart';
import 'package:ui_kit/src/theme/app_colors.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:animate_do_plus/animate_do_plus.dart';

enum SurfaceContainerType {
  circle,
  ellipse,
}

class SurfaceContainer extends StatelessWidget {
  static const _defaultElevation = 0.0;

  const SurfaceContainer.circle({
    super.key,
    this.onTap,
    this.onLongTap,
    this.color,
    this.hoverColor,
    this.borderColor,
    this.size,
    this.elevation = _defaultElevation,
    this.isShimmering = false,
    this.isBubbles = false,
    this.showBorder = true,
    this.shadowColor,
    this.stackChild,
    required this.child,
  }) : borderRadius = null,
       type = SurfaceContainerType.circle;

  const SurfaceContainer.ellipse({
    super.key,
    this.onTap,
    this.onLongTap,
    this.borderRadius,
    this.color,
    this.hoverColor,
    this.borderColor,
    this.size,
    this.elevation = _defaultElevation,
    this.isShimmering = false,
    this.isBubbles = false,
    this.showBorder = true,
    this.shadowColor,
    this.stackChild,
    required this.child,
  }) : type = SurfaceContainerType.ellipse;

  final SurfaceContainerType type;
  final BorderRadius? borderRadius;
  final Size? size;
  final Color? color;
  final Color? hoverColor;
  final Color? borderColor;
  final bool isShimmering;
  final bool isBubbles;
  final double elevation;
  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongTap;
  final bool showBorder;
  final Color? shadowColor;
  final Widget? stackChild;

  ShapeBorder _effectiveShapeBorder(Color borderColor) {
    final borderSide = showBorder
        ? BorderSide(color: borderColor)
        : BorderSide.none;

    switch (type) {
      case SurfaceContainerType.circle:
        return OvalBorder(side: borderSide);
      case SurfaceContainerType.ellipse:
        return RoundedSuperellipseBorder(
          borderRadius: borderRadius ?? UiKitConstants.commonBorderRadius,
          side: borderSide,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final effectiveBaseColor = color ?? Colors.black12;
    final effectiveHoverColor = hoverColor ?? (context.isLightTheme ? AppColors.black04 : AppColors.white08);
    final effectiveBorderColor = borderColor ?? (context.isLightTheme ? Colors.black12 : Colors.white10);
    final effectiveShape = _effectiveShapeBorder(effectiveBorderColor);
    final effectiveShadowColor = shadowColor ?? Colors.black38;

    return BounceTapWithBuilderAnimation(
      onTap: onTap,
      onLongTap: onLongTap,
      minScale: 0.9,
      builder: (context, animation) => _buildSurface(
        context: context,
        animation: animation,
        baseColor: effectiveBaseColor,
        hoverColor: effectiveHoverColor,
        shape: effectiveShape,
        shadowColor: effectiveShadowColor,
      ),
    );
  }

  Widget _buildSurface({
    required BuildContext context,
    required Animation<double> animation,
    required Color baseColor,
    required Color hoverColor,
    required ShapeBorder shape,
    required Color shadowColor,
  }) {
    final clipBehavior = (isShimmering || isBubbles) || stackChild != null
        ? Clip.hardEdge
        : Clip.none;

    return SizedBox.fromSize(
      size: size,
      child: PhysicalShape(
        elevation: elevation,
        clipper: ShapeBorderClipper(shape: shape),
        clipBehavior: clipBehavior,
        color: Colors.transparent,
        shadowColor: shadowColor,
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            final animationValue = const Interval(0.5, 1.0).transform(animation.value);
            final backgroundColor = Color.lerp(baseColor, hoverColor, animationValue)!;

            return DecoratedBox(
              decoration: ShapeDecoration(shape: shape, color: backgroundColor),
              child: child,
            );
          },
          child: Stack(
            children: [
              child,
              ?stackChild,
              if (isBubbles) const Positioned.fill(
                child: BubblesAnimation(),
              ),
              if (isShimmering) const Positioned.fill(
                child: ShimmerAnimation(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
