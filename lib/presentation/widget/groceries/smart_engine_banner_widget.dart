import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:ui_kit/ui_kit.dart';

class SmartEngineBanner extends StatelessWidget {
  const SmartEngineBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: SurfaceContainer.ellipse(
        color: Colors.transparent,
        borderRadius: UiKitConstants.commonBorderRadius,
        shadowColor: context.theme.colorScheme.primary.withValues(alpha: 0.4),
        elevation: 8,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: AppColors.commonColoredGradient(context),
            borderRadius: UiKitConstants.commonBorderRadius,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonAppIcon(
                  path: AppAssets.messageQuestionLinear,
                  color: context.lightIconColor,
                  size: 22,
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.tr(LocaleKeys.smart_engine_banner_title).toUpperCase(),
                        style: h7.copyWith(
                          color: context.lightTextColor,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        context.tr(LocaleKeys.smart_engine_banner_description),
                        style: bodyM.copyWith(
                          color: context.lightTextColor.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
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
