import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/widget/groceries/grocery_tile_widget.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:ui_kit/ui_kit.dart';

class QuickAddTile extends StatelessWidget {
  const QuickAddTile({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TapFadeAnimation(
      onTap: onTap,
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          dashPattern: const [10, 8],
          radius: GroceryTile.borderRadius.topLeft,
          color: context.iconColor.withValues(alpha: 0.2),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 14.w, 14.w, 14.w),
          child: Row(
            children: [
              SurfaceContainer.ellipse(
                borderRadius: UiKitConstants.commonBorderRadius,
                color: context.iconColor.withValues(alpha: .05),
                size: const Size.square(48),
                showBorder: false,
                child: Center(
                  child: CommonAppRawIcon(
                    path: AppAssets.addLinear,
                    color: context.iconColorTernary,
                    size: 22,
                  ),
                ),
              ),
              16.horizontalSpace,
              Text(
                LocaleKeys.quick_add_tile_label.tr(),
                style: h5.copyWith(color: context.textColorTernary),
              ),
              18.horizontalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
