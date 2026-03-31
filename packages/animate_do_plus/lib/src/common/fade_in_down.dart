import '../constants/animation_constants.dart';
import '../core/core_animation_mixin.dart';
import '../core/core_fade_slide.dart';
import '../util/animations_util.dart';
import 'package:flutter/material.dart';

extension FadeInDownExtension on Widget {
  Widget autoFadeInDown({
    Duration? delay,
    Duration? duration,
    Duration? reverseDuration,
    Curve? slideCurve,
    Curve? slideReverseCurve,
    Curve? fadeCurve,
    Curve? fadeReverseCurve,
    bool manualTrigger = false,
    bool animate = true,
    Function(AnimateDoDirection direction)? onFinish,
    int? sequencePos,
    (Offset, Offset)? slide,
    (double, double)? fade,
  }) {
    return CoreFadeSlide(
      delay: sequencePos != null ? AnimationsUtil.sequenceDelayProvider(sequencePos) : delay,
      duration: duration ?? CommonAnimationValues.forwardDuration,
      reverseDuration: reverseDuration ?? CommonAnimationValues.reverseDuration,
      slideCurve: slideCurve ?? CommonAnimationValues.slideForwardCurve,
      slideReverseCurve: slideReverseCurve ?? CommonAnimationValues.slideReverseCurve,
      fadeCurve: fadeCurve ?? CommonAnimationValues.fadeUpForwardCurve,
      fadeReverseCurve: fadeReverseCurve ?? CommonAnimationValues.fadeUpReverseCurve,
      slideFrom: slide?.$1 ?? const Offset(0.0, -CommonAnimationValues.slideOffset),
      slideTo: slide?.$2 ?? Offset.zero,
      fadeFrom: fade?.$1 ?? 0.0,
      fadeTo: fade?.$2 ?? 1.0,
      manualTrigger: manualTrigger,
      animate: animate,
      onFinish: onFinish,
      child: this,
    );
  }
}
