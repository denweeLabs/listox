import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({
    super.key,
    required this.path,
    this.repeat = false,
    this.animationStart = 0.0,
    this.animationEnd = 1.0,
    this.interval = Duration.zero,
    this.duration,
    this.fit,
    this.color,
  });

  final String path;
  final bool repeat;
  final Duration? duration;
  final Duration interval;
  final BoxFit? fit;

  /// When set, the whole animation is tinted with this color while keeping
  /// its original alpha (shapes, gradients and trails stay intact).
  final Color? color;

  /// Normalized position (0.0–1.0) from which the first cycle begins.
  /// Subsequent cycles (when [repeat] is true) always start from 0.0.
  final double animationStart;

  /// Normalized position (0.0–1.0) at which the animation stops.
  /// Only used when [repeat] is false. Defaults to 1.0 (full playthrough).
  final double animationEnd;

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
      Future.delayed(widget.interval, () {
        if (mounted) _controller.forward(from: 0.0);
      });
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
    final animation = Lottie.asset(
      widget.path,
      controller: _controller,
      onLoaded: (composition) {
        _controller.duration = (widget.duration ?? composition.duration);
        if (widget.repeat) {
          _controller.forward(from: widget.animationStart);
        } else {
          _controller.value = widget.animationStart;
          _controller.animateTo(widget.animationEnd);
        }
      },
      fit: widget.fit,
    );

    final color = widget.color;
    if (color == null) return animation;

    return ColorFiltered(
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      child: animation,
    );
  }
}
