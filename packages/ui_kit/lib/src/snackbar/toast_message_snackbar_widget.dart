import 'package:ui_kit/src/constants/ui_kit_constants.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:ui_kit/src/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToastMessageSnackbar extends StatelessWidget {
  const ToastMessageSnackbar(
    this.message, {
    super.key,
    this.backgroundColor,
    this.textColor,
  });

  final String message;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: PhysicalModel(
        borderRadius: UiKitConstants.commonBorderRadius,
        color: backgroundColor ?? context.primaryContainer,
        shadowColor: Colors.black54,
        elevation: 6.0,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 18.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: Text(
                    message,
                    style: h6.copyWith(color: textColor ?? context.textColor),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
