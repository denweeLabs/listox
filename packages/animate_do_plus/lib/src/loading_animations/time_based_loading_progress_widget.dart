import 'dart:async';

import 'package:flutter/material.dart';

class TimeBasedLoadingProgress extends StatefulWidget {
  const TimeBasedLoadingProgress({
    super.key,
    required this.isCompleted,
    required this.onCompleted,
    this.stages = defaultStages,
    this.size = defaultSize,
    this.color = Colors.white,
    this.trackColor,
    this.percentageTextStyle,
  });

  final bool isCompleted;
  final VoidCallback onCompleted;
  final List<(double, double)> stages;
  final Size size;
  final Color color;
  final Color? trackColor;
  final TextStyle? percentageTextStyle;

  static const defaultStages = [
    (5.0, 0.38),
    (12.0, 0.62),
    (20.0, 0.80),
    (26.0, 0.91),
    (60.0, 0.99),
  ];

  static const defaultSize = Size.square(58);

  @override
  State<TimeBasedLoadingProgress> createState() =>
      _TimeBasedLoadingProgressState();
}

class _TimeBasedLoadingProgressState extends State<TimeBasedLoadingProgress>
    with SingleTickerProviderStateMixin {
  late final Stopwatch _stopwatch;
  late final AnimationController _completionController;
  late Animation<double> _completionAnimation;

  Timer? _timer;
  double _progress = 0.0;
  bool _completing = false;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch()..start();
    _completionController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _timer = Timer.periodic(const Duration(milliseconds: 50), (_) {
      if (!_completing) {
        final elapsed = _stopwatch.elapsedMilliseconds / 1000.0;
        setState(() => _progress = _calculate(elapsed));
      }
    });
  }

  @override
  void didUpdateWidget(TimeBasedLoadingProgress oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isCompleted && !oldWidget.isCompleted && !_completing) {
      _startCompletion();
    }
  }

  void _startCompletion() {
    _completing = true;
    _timer?.cancel();
    _completionAnimation = Tween<double>(begin: _progress, end: 1.0).animate(
      CurvedAnimation(parent: _completionController, curve: Curves.easeOut),
    );
    _completionAnimation.addListener(() {
      setState(() => _progress = _completionAnimation.value);
    });
    _completionController.forward().then((_) {
      Future.delayed(const Duration(milliseconds: 250), widget.onCompleted);
    });
  }

  double _calculate(double elapsed) {
    var prevTime = 0.0;
    var prevProgress = 0.0;
    for (final (endTime, endProgress) in widget.stages) {
      if (elapsed <= endTime) {
        final t = (elapsed - prevTime) / (endTime - prevTime);
        return prevProgress + t * (endProgress - prevProgress);
      }
      prevTime = endTime;
      prevProgress = endProgress;
    }
    return widget.stages.last.$2;
  }

  @override
  void dispose() {
    _timer?.cancel();
    _stopwatch.stop();
    _completionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pct = (_progress * 100).round();

    return SizedBox.fromSize(
      size: widget.size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: CircularProgressIndicator(
              value: _progress,
              color: widget.color,
              strokeWidth: 4,
              backgroundColor: widget.trackColor ?? widget.color.withValues(alpha: 0.2),
            ),
          ),
          Text(
            '$pct%',
            key: ValueKey(pct),
            style:
                widget.percentageTextStyle ??
                TextStyle(
                  fontSize: 13.0,
                  letterSpacing: -0.4,
                  fontWeight: FontWeight.w700,
                  color: widget.color,
                  height: 1.0,
                ),
          ),
        ],
      ),
    );
  }
}
