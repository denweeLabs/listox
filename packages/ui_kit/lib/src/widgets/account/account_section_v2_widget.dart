import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/ui_kit.dart';

/// iOS-style grouped settings section with a title label above a rounded
/// card container.
class AccountSectionV2 extends StatelessWidget {
  const AccountSectionV2({
    super.key,
    required this.title,
    required this.children,
    this.suffixText,
    this.onSuffixTap,
    this.contentPadding,
    this.useContainer = true,
  });

  final String title;
  final List<Widget> children;

  /// Optional trailing text shown next to the title (e.g. current setting).
  final String? suffixText;

  /// Tap handler for [suffixText]. Ignored when [suffixText] is null.
  final VoidCallback? onSuffixTap;
  final EdgeInsets? contentPadding;
  final bool useContainer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(context),
        12.verticalSpace,
        _buildContainer(context),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title.toUpperCase(),
              style: h7.copyWith(
                color: context.textColorSecondary,
                letterSpacing: 0.8,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          if (suffixText != null)
            BounceTapAnimation(
              onTap: onSuffixTap,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    suffixText!,
                    style: h7.copyWith(
                      color: context.theme.colorScheme.secondary,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  4.horizontalSpace,
                  CommonAppIcon(
                    path: UiKitAssets.arrowRightIos,
                    color: context.theme.colorScheme.secondary,
                    size: 16,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildContainer(BuildContext context) {
    if (!useContainer) {
      return Padding(
        padding: contentPadding ?? EdgeInsets.symmetric(vertical: 8.h),
        child: Column(mainAxisSize: MainAxisSize.min, children: children),
      );
    }

    return SurfaceContainer.ellipse(
      color: context.primaryContainer,
      showBorder: false,
      elevation: 12,
      shadowColor: Colors.black12,
      child: Padding(
        padding: contentPadding ?? EdgeInsets.symmetric(vertical: 8.h),
        child: Column(mainAxisSize: MainAxisSize.min, children: children),
      ),
    );
  }
}
