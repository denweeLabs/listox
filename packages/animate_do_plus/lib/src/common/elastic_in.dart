import 'package:flutter/material.dart';
import '../constants/animation_constants.dart';
import '../core/core_fade_scale.dart';
import '../util/animations_util.dart';

extension ElasticInExtension on Widget {
  Widget autoElasticIn({
    Duration? delay,
    Duration? duration,
    Duration? reverseDuration,
    Curve? scaleCurve,
    Curve? scaleReverseCurve,
    Curve? fadeCurve,
    Curve? fadeReverseCurve,
    bool manualTrigger = false,
    bool animate = true,
    bool forceComplete = true,
    int? sequencePos,
    (double, double)? scale,
    (double, double)? fade,
  }) {
    return CoreFadeScale(
      delay: sequencePos != null ? AnimationsUtil.sequenceDelayProvider(sequencePos) : delay,
      duration: duration ?? CommonAnimationValues.forwardDuration,
      reverseDuration: reverseDuration ?? CommonAnimationValues.reverseDuration,
      scaleCurve: scaleCurve ?? CommonAnimationValues.scaleUpForwardCurve,
      scaleReverseCurve: scaleReverseCurve ?? CommonAnimationValues.scaleUpReverseCurve,
      fadeCurve: fadeCurve ?? CommonAnimationValues.fadeUpForwardCurve,
      fadeReverseCurve: fadeReverseCurve ?? CommonAnimationValues.fadeUpReverseCurve,
      scaleFrom: scale?.$1 ?? 0.0,
      scaleTo: scale?.$2 ?? 1.0,
      fadeFrom: fade?.$1 ?? 0.0,
      fadeTo: fade?.$2 ?? 1.0,
      manualTrigger: manualTrigger,
      animate: animate,
      forceComplete: forceComplete,
      child: this,
    );
  }
}
