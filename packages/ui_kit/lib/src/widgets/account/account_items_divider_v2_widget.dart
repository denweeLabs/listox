import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/src/theme/app_colors.dart';
import 'package:ui_kit/src/theme/app_theme.dart';

/// Indented divider for use between [AccountHorizontalTileV2] rows.
///
/// The left indent aligns the line with the tile title text, matching iOS
/// Settings-style separators.
class AccountItemsDividerV2 extends StatelessWidget {
  const AccountItemsDividerV2({super.key});

  // hPad(16) + iconBoxSize(36) + iconGap(12)
  static const double _leftIndent = 64.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: _leftIndent.w),
      child: Divider(
        height: 1,
        thickness: 0.5,
        color: context.isLightTheme
            ? AppColors.black10
            : AppColors.white06,
      ),
    );
  }
}
