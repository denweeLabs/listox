import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class AnimatedNumber extends StatelessWidget {
  const AnimatedNumber({
    super.key,
    required this.number,
    this.style,
    this.curve = Curves.easeOutQuint,
    this.suffix,
    this.prefix,
    this.duration = const Duration(milliseconds: 900),
    this.fractionDigits = 0,
    this.decimalSeparator = '.',
  });

  final num number;
  final TextStyle? style;
  final Curve curve;
  final String? suffix;
  final String? prefix;
  final Duration duration;
  final int fractionDigits;
  final String decimalSeparator;

  @override
  Widget build(BuildContext context) {
    return AnimatedFlipCounter(
      value: number,
      curve: curve,
      duration: duration,
      textStyle: style,
      suffix: suffix,
      prefix: prefix,
      fractionDigits: fractionDigits,
      decimalSeparator: decimalSeparator,
    );
  }
}
