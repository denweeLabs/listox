import 'package:flutter/material.dart';

import 'core_animation_mixin.dart';
import 'transforms/pixel_scale_transition.dart';

/// [key]: optional widget key reference
/// [child]: mandatory, widget to animate
/// [duration]: how much time the animation should take
/// [delay]: delay before the animation starts
/// [controller]: optional/mandatory, exposes the animation controller created by Animate_do
/// [manualTrigger]: boolean that indicates if you want to trigger the animation manually with the controller
/// [animate]: For a State controller property, if you re-render changing it from false to true, the animation will be fired immediately
/// [onFinish]: callback that returns the direction of the animation, [AnimateDoDirection.forward] or [AnimateDoDirection.backward]
/// [curve]: curve for the animation
class CoreFadeScale extends StatefulWidget {
  final Widget child;
  final Duration? delay;
  final Duration duration;
  final Duration reverseDuration;
  final Curve scaleCurve;
  final Curve scaleReverseCurve;
  final Curve fadeCurve;
  final Curve fadeReverseCurve;
  final double scaleFrom;
  final double scaleTo;
  final double fadeFrom;
  final double fadeTo;
  final AnimationController? externalController;
  final bool manualTrigger;
  final bool animate;
  final bool forceComplete;
  final Function(AnimateDoDirection direction)? onFinish;

  const CoreFadeScale({
    super.key,
    required this.child,
    required this.delay,
    required this.duration,
    required this.reverseDuration,
    required this.scaleCurve,
    required this.scaleReverseCurve,
    required this.fadeCurve,
    required this.fadeReverseCurve,
    required this.scaleFrom,
    required this.scaleTo,
    required this.fadeFrom,
    required this.fadeTo,
    this.externalController,
    this.manualTrigger = false,
    this.animate = true,
    this.forceComplete = true,
    this.onFinish,
  });

  @override
  State<CoreFadeScale> createState() => _CoreFadeScaleState();
}

class _CoreFadeScaleState extends State<CoreFadeScale>
    with SingleTickerProviderStateMixin, CoreAnimationMixin<CoreFadeScale> {
  Animation<double>? scale;
  Animation<double>? opacity;

  bool get isScaleAnimated => widget.scaleFrom != widget.scaleTo;
  bool get isFadeAnimated => widget.fadeFrom != widget.fadeTo;
  bool get isAnimated => isScaleAnimated || isFadeAnimated;

  @override
  void initState() {
    super.initState();

    if (!isAnimated) return;

    initCoreAnimation(
      duration: widget.duration,
      reverseDuration: widget.reverseDuration,
      externalController: widget.externalController,
      onFinish: widget.onFinish,
    );

    if (isScaleAnimated) {
      scale = Tween<double>(
        begin: widget.scaleFrom,
        end: widget.scaleTo,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: widget.scaleCurve,
          reverseCurve: widget.scaleReverseCurve,
        ),
      );
    }

    if (isFadeAnimated) {
      opacity = Tween<double>(
        begin: widget.fadeFrom,
        end: widget.fadeTo,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: widget.fadeCurve,
          reverseCurve: widget.fadeReverseCurve,
        ),
      );
    }

    startAnimationIfNeeded(
      animate: widget.animate,
      manualTrigger: widget.manualTrigger,
      delay: widget.delay,
    );
  }

  @override
  void didUpdateWidget(covariant CoreFadeScale oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (!isAnimated) return;

    handleAnimateUpdate(
      oldAnimate: oldWidget.animate,
      animate: widget.animate,
      forceComplete: widget.forceComplete,
      delay: widget.delay,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!isAnimated) return widget.child;

    // Each transition is a SingleChildRenderObjectWidget that subscribes to
    // the animation at the render layer — zero widget rebuilds per frame.
    Widget result = widget.child;
    if (isFadeAnimated) result = FadeTransition(opacity: opacity!, child: result);
    if (isScaleAnimated) result = PixelScaleTransition(scale: scale!, child: result);
    return result;
  }
}
