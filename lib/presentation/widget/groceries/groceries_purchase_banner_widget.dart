import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:ui_kit/ui_kit.dart';

class GroceriesPurchaseBanner extends StatelessWidget {
  const GroceriesPurchaseBanner({
    super.key,
    required this.checkedCount,
    required this.uncheckedCount,
    required this.onCancel,
    required this.onPurchase,
  });

  final int checkedCount;
  final int uncheckedCount;
  final VoidCallback onCancel;
  final VoidCallback onPurchase;

  @override
  Widget build(BuildContext context) {
    return SurfaceContainer.ellipse(
      showBorder: false,
      color: context.primaryContainer,
      hoverColor: context.secondaryContainer,
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      elevation: 3.0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          children: [
            SizedBox(
              width: 124.w,
              height: 124.w,
              child: LottieAnimation(path: AppAssets.scrollingChecklistAnimation),
            ),
            12.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    uncheckedCount <= 0
                        ? context.tr(LocaleKeys.purchase_banner_fully_stocked)
                        : context.plural(LocaleKeys.purchase_banner_items_checked, checkedCount),
                    style: h6.copyWith(color: context.textColorSecondary),
                  ),
                  12.verticalSpace,
                  SizedBox(
                    height: 32,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        8.horizontalSpace,
                        Expanded(
                          flex: 1,
                          child: BounceTapAnimation(
                            onTap: onCancel,
                            child: SizedBox(
                              height: double.infinity,
                              child: Center(
                                child: Text(
                                  context.tr(LocaleKeys.common_cancel),
                                  style: h6.copyWith(
                                    color: context.textColorTernary,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ),
                          ),
                        ),
                        18.horizontalSpace,
                        Expanded(
                          flex: 2,
                          child: AppSolidButton(
                            onTap: onPurchase,
                            text: context.tr(LocaleKeys.purchase_banner_button_purchase),
                            isUpperCaseText: false,
                            textColor: context.lightTextColor,
                            textStyle: h6.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                            isShimmering: true,
                            hideShadow: true,
                          ),
                        ),
                        14.horizontalSpace,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
