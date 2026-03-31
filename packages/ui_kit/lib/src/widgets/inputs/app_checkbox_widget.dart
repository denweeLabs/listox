import 'package:ui_kit/src/constants/ui_kit_assets.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do_plus/animate_do_plus.dart';

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({
    super.key,
    required this.isChecked,
    this.onTap,
    this.color,
  });

  final bool isChecked;
  final Color? color;
  final VoidCallback? onTap;

  static const uncheckedSize = Size.square(22);
  static const checkedSize = Size.square(34);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: isChecked
          ? SizedBox.fromSize(
              size: checkedSize,
              child: LottieAnimation(path: UiKitAssets.successCheckmarkAnimation),
            )
          : Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: SizedBox.fromSize(
                size: uncheckedSize,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: context.iconColorTernary),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
    );
  }
}
