// ignore_for_file: library_private_types_in_public_api

import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/src/constants/ui_kit_assets.dart';
import 'package:ui_kit/ui_kit.dart';

enum _AccountHorizontalTileType {
  value,
  widget,
  sSwitch,
  column,
  valueMore,
  more,
}

class AccountHorizontalTile extends StatelessWidget {
  static const defaultIconSize = 18.0;

  const AccountHorizontalTile._({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onTap,
    required this.type,
    this.subtitle,
    this.value,
    this.widget,
    this.switchValue,
    this.column,
  });

  final String iconPath;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final _AccountHorizontalTileType type;
  final String? value;
  final Widget? widget;
  final bool? switchValue;
  final Widget? column;

  const AccountHorizontalTile.value({
    Key? key,
    required String iconPath,
    required String title,
    required VoidCallback? onTap,
    required String value,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         onTap: onTap,
         value: value,
         type: _AccountHorizontalTileType.value,
       );

  const AccountHorizontalTile.widget({
    Key? key,
    required String iconPath,
    required String title,
    required VoidCallback onTap,
    required Widget widget,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         onTap: onTap,
         widget: widget,
         type: _AccountHorizontalTileType.widget,
       );

  const AccountHorizontalTile.sSwitch({
    Key? key,
    required String iconPath,
    required String title,
    required VoidCallback? onTap,
    required bool switchValue,
    String? subtitle,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         subtitle: subtitle,
         onTap: onTap,
         switchValue: switchValue,
         type: _AccountHorizontalTileType.sSwitch,
       );

  const AccountHorizontalTile.column({
    Key? key,
    required String iconPath,
    required String title,
    required VoidCallback onTap,
    required Widget column,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         onTap: onTap,
         column: column,
         type: _AccountHorizontalTileType.column,
       );

  const AccountHorizontalTile.valueMore({
    Key? key,
    required String iconPath,
    required String title,
    required String value,
    required VoidCallback onTap,
    String? subtitle,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         value: value,
         onTap: onTap,
         subtitle: subtitle,
         type: _AccountHorizontalTileType.valueMore,
       );

  const AccountHorizontalTile.more({
    Key? key,
    required String iconPath,
    required String title,
    required VoidCallback onTap,
    String? subtitle,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         onTap: onTap,
         subtitle: subtitle,
         type: _AccountHorizontalTileType.more,
       );

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: BounceTapAnimation(
        minScale: 0.96,
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (type == _AccountHorizontalTileType.column) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildRow(context), column!],
      );
    }

    return _buildRow(context);
  }

  Widget _buildRow(BuildContext context) {
    return Row(
      children: [
        SurfaceContainer.ellipse(
          color: context.primaryContainer,
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          borderColor: context.isLightTheme
              ? Colors.black12
              : AppColors.white08,
          size: Size.square(defaultIconSize + 24),
          child: Center(
            child: CommonAppIcon(
              path: iconPath,
              size: defaultIconSize,
              color: context.iconColorSecondary,
            ),
          ),
        ),
        12.horizontalSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: bodyL.copyWith(
                  color: context.textColor,
                  fontWeight: FontWeight.w700,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              if (subtitle != null) ...[
                Text(
                  subtitle!,
                  style: bodyM.copyWith(
                    color: context.textColor.withValues(alpha: 0.3),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ],
          ),
        ),
        _buildSuffix(context),
      ],
    );
  }

  Widget _buildSuffix(BuildContext context) {
    switch (type) {
      case _AccountHorizontalTileType.value:
        return Text(
          value!,
          style: bodyL.copyWith(color: context.theme.colorScheme.secondary),
        );

      case _AccountHorizontalTileType.sSwitch:
        return AppSwitch(isChecked: switchValue!, onTap: onTap);

      case _AccountHorizontalTileType.widget:
        return widget!;

      case _AccountHorizontalTileType.more:
        return CommonAppIcon(
          path: UiKitAssets.arrowRightIos,
          color: context.iconColorTernary,
          size: 20,
        );

      case _AccountHorizontalTileType.valueMore:
        return Row(
          children: [
            Text(
              value!,
              style: bodyL.copyWith(color: context.textColorTernary),
            ),
            6.horizontalSpace,
            CommonAppIcon(
              path: UiKitAssets.arrowRightIos,
              color: context.iconColorTernary,
              size: 20,
            ),
          ],
        );

      default:
        return const SizedBox.shrink();
    }
  }
}
