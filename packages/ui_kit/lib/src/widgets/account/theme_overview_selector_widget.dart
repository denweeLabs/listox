import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/ui_kit.dart';

class ThemeModeOverviewSelector extends StatelessWidget {
  const ThemeModeOverviewSelector({
    super.key,
    required this.currentSelectedMode,
    required this.onChanged,
    this.labels,
  });

  final ThemeMode currentSelectedMode;
  final ValueChanged<ThemeMode> onChanged;
  final Map<ThemeMode, String>? labels;

  static final _bubbleSize = 64.r;
  static const _bubbleBorderWidth = 4.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _ThemeBubble(
          mode: ThemeMode.system,
          onTap: () => onChanged(ThemeMode.system),
          currentMode: currentSelectedMode,
          label: labels?[ThemeMode.system] ?? 'System',
          gradient: LinearGradient(
            colors: [
              AppColors.primaryBackground[ThemeType.light]!,
              AppColors.primaryBackground[ThemeType.dark]!,
            ],
            stops: const [0.5, 0.5],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        _ThemeBubble(
          mode: ThemeMode.light,
          onTap: () => onChanged(ThemeMode.light),
          currentMode: currentSelectedMode,
          label: labels?[ThemeMode.light] ?? 'Light',
          color: AppColors.primaryBackground[ThemeType.light]!,
        ),
        _ThemeBubble(
          mode: ThemeMode.dark,
          onTap: () => onChanged(ThemeMode.dark),
          currentMode: currentSelectedMode,
          label: labels?[ThemeMode.dark] ?? 'Dark',
          color: AppColors.primaryBackground[ThemeType.dark]!,
        ),
      ],
    );
  }
}

class _ThemeBubble extends StatelessWidget {
  const _ThemeBubble({
    required this.mode,
    required this.currentMode,
    required this.label,
    required this.onTap,
    this.color,
    this.gradient,
  });

  final ThemeMode mode;
  final ThemeMode currentMode;
  final String label;
  final Color? color;
  final Gradient? gradient;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isSelected = currentMode == mode;

    final borderColor = _getBorderColor(context, isSelected, mode);

    return Column(
      children: [
        BounceTapAnimation(
          minScale: 1.06,
          onTap: onTap,
          child: SizedBox.square(
            dimension: ThemeModeOverviewSelector._bubbleSize,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
                gradient: gradient,
                border: Border.all(
                  color: borderColor,
                  width: ThemeModeOverviewSelector._bubbleBorderWidth,
                ),
              ),
            ),
          ),
        ),
        6.verticalSpace,
        Text(
          label,
          style: bodyS.copyWith(
            color: context.textColorSecondary,
          ),
        ),
      ],
    );
  }
}

Color _getBorderColor(BuildContext context, bool isSelected, ThemeMode mode) {
  if (isSelected) {
    return context.theme.colorScheme.secondary;
  }

  if (!context.isLightTheme) {
    return Colors.grey.shade800;
  }

  return mode == ThemeMode.dark ? Colors.grey.shade500 : Colors.grey.shade600;
}
