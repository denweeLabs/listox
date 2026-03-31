import 'package:animate_do_plus/src/loading_animations/double_bounce_loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

enum AppLoadingIndicatorType { doubleBounce, hexagonDots }

const appLoadingIndicatorDefaultType = AppLoadingIndicatorType.doubleBounce;
const appLoadingIndicatorDefaultSize = 22.0;

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    super.key,
    this.type = appLoadingIndicatorDefaultType,
    this.size = appLoadingIndicatorDefaultSize,
    this.color,
  });

  final AppLoadingIndicatorType type;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveColor = color ?? theme.colorScheme.secondary;

    return RepaintBoundary(child: _buildLoader(effectiveColor));
  }

  Widget _buildLoader(Color color) {
    switch (type) {
      case AppLoadingIndicatorType.doubleBounce:
        return DoubleBounceLoader(color: color, size: size + 4);
      case AppLoadingIndicatorType.hexagonDots:
        return LoadingAnimationWidget.hexagonDots(color: color, size: size);
    }
  }
}
