import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/src/constants/ui_kit_assets.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({
    super.key,
    required this.title,
    required this.children,
    this.verticalSpacing = 18,
    this.titlePadding,
    this.childrenPadding,
    this.suffixText,
    this.onTap,
  });

  final String title;
  final List<Widget> children;
  final int verticalSpacing;
  final EdgeInsets? titlePadding;
  final EdgeInsets? childrenPadding;
  final String? suffixText;
  final VoidCallback? onTap;

  static final defaultPadding = EdgeInsets.symmetric(horizontal: 6.w);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: titlePadding ?? defaultPadding,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: h2.copyWith(
                      color: context.textColor,
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                if (suffixText != null)
                  BounceTapAnimation(
                    onTap: onTap,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              suffixText!,
                              style: h5.copyWith(
                                color: context.theme.colorScheme.secondary,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        6.horizontalSpace,
                        CommonAppIcon(
                          path: UiKitAssets.arrowRightIos,
                          color: context.theme.colorScheme.secondary,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          (verticalSpacing).verticalSpace,
          Padding(
            padding: childrenPadding ?? defaultPadding,
            child: Column(children: children),
          ),
        ],
      ),
    );
  }
}
