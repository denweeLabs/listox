import '../constants/animation_constants.dart';
import '../util/animations_util.dart';
import '../core/core_animation_mixin.dart';
import '../core/core_fade.dart';
import 'package:flutter/material.dart';

extension FadeInExtension on Widget {
  Widget autoFadeIn({
    Key? key,
    Duration? delay,
    Duration? duration,
    Duration? reverseDuration,
    Curve? fadeCurve,
    Curve? fadeReverseCurve,
    bool manualTrigger = false,
    bool animate = true,
    Function(AnimateDoDirection direction)? onFinish,
    int? sequencePos,
    bool ignoring = false,
  }) {
    if (ignoring) return this;
    
    return CoreFade(
      key: key,
      delay: sequencePos != null ? AnimationsUtil.sequenceDelayProvider(sequencePos) : delay,
      duration: duration ?? CommonAnimationValues.forwardDuration,
      reverseDuration: reverseDuration ?? CommonAnimationValues.reverseDuration,
      fadeCurve: fadeCurve ?? CommonAnimationValues.fadeUpForwardCurve,
      fadeReverseCurve: fadeReverseCurve ?? CommonAnimationValues.fadeUpReverseCurve,
      fadeFrom: 0.0,
      fadeTo: 1.0,
      manualTrigger: manualTrigger,
      animate: animate,
      onFinish: onFinish,
      child: this,
    );
  }
}
