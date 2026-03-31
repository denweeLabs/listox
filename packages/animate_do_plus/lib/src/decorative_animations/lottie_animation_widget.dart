import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({
    super.key,
    required this.path,
    this.repeat = false,
    this.animationStart = 0.0,
    this.duration,
  });

  final String path;
  final bool repeat;
  final Duration? duration;

  /// Normalized position (0.0–1.0) from which the first cycle begins.
  /// Subsequent cycles (when [repeat] is true) always start from 0.0.
  final double animationStart;

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    if (widget.repeat) {
      _controller.addStatusListener(_onStatus);
    }
  }

  void _onStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _controller.repeat();
    }
  }

  @override
  void dispose() {
    _controller
      ..removeStatusListener(_onStatus)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      widget.path,
      controller: _controller,
      onLoaded: (composition) {
        _controller.duration = (widget.duration ?? composition.duration);
        _controller.forward(from: widget.animationStart);
      },
    );
  }
}
