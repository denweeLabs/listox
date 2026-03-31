import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:ui_kit/ui_kit.dart';

class GroceryTemplateTile extends StatelessWidget {
  const GroceryTemplateTile({
    super.key,
    required this.item,
    required this.onTap,
    required this.isSelected,
  });

  final void Function(GroceryTemplate) onTap;
  final GroceryTemplate item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SurfaceContainer.ellipse(
      onTap: () => onTap(item),
      color: isSelected
          ? context.theme.colorScheme.primary
          : context.primaryContainer,
      hoverColor: isSelected
          ? context.theme.colorScheme.secondary
          : context.secondaryContainer,
      elevation: 3.0,
      showBorder: false,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonAppRawIcon(
              path: item.icon,
              color: isSelected
                  ? context.lightIconColor
                  : context.iconColor,
              size: 24,
            ),
            SizedBox(height: 6.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Text(
                item.localizedName(),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: bodyS.copyWith(
                  color: isSelected
                      ? context.lightTextColor
                      : context.textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GroceryTemplateAdd extends StatelessWidget {
  const GroceryTemplateAdd({
    super.key,
    required this.categoryId,
    required this.onTap,
  });

  final UniqueId categoryId;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BounceTapAnimation(
      onTap: onTap,
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          dashPattern: const [10, 8],
          radius: UiKitConstants.commonBorderRadius.topLeft,
          color: context.iconColor.withValues(alpha: 0.2),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonAppIcon(
                path: AppAssets.addLinear,
                color: context.textColorSecondary,
                size: 24,
              ),
              SizedBox(height: 6.h),
              Text(
                context.tr(LocaleKeys.select_groceries_add),
                style: bodyS.copyWith(color: context.textColorSecondary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
