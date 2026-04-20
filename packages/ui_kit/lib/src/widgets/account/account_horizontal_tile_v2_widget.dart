// ignore_for_file: library_private_types_in_public_api

import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/ui_kit.dart';

enum _TileType {
  value,
  widget,
  sSwitch,
  column,
  valueMore,
  more,
}

/// Enhanced v2 horizontal settings tile with a gradient icon bubble.
///
/// Use the predefined [TileIconGradient] constants to pick an icon colour:
/// ```dart
/// AccountHorizontalTileV2.more(
///   iconPath: UiKitIcons.shield,
///   title: 'Privacy Policy',
///   gradient: TileIconGradient.indigo,
///   onTap: ...,
/// )
/// ```
class AccountHorizontalTileV2 extends StatelessWidget {
  static const double defaultIconBoxSize = 42.0;
  static const double defaultIconSize = 20.0;
  static const double defaultHorizontalPadding = 16.0;
  static const double defaultVerticalPadding = 12.0;
  static const double defaultIconGap = 14.0;

  const AccountHorizontalTileV2._({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onTap,
    required this.type,
    required this.gradient,
    this.subtitle,
    this.value,
    this.trailingWidget,
    this.switchValue,
    this.columnChild,
    this.horizontalPadding = defaultHorizontalPadding,
    this.verticalPadding = defaultVerticalPadding,
    this.iconGap = defaultIconGap,
    this.iconBoxSize = defaultIconBoxSize,
    this.iconSize = defaultIconSize,
  });

  final String iconPath;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final _TileType type;
  final TileIconGradient gradient;
  final String? value;
  final Widget? trailingWidget;
  final bool? switchValue;
  final Widget? columnChild;

  final double horizontalPadding;
  final double verticalPadding;
  final double iconGap;
  final double iconBoxSize;
  final double iconSize;

  const AccountHorizontalTileV2.value({
    Key? key,
    required String iconPath,
    required String title,
    required String value,
    required TileIconGradient gradient,
    required VoidCallback? onTap,
    double horizontalPadding = defaultHorizontalPadding,
    double verticalPadding = defaultVerticalPadding,
    double iconGap = defaultIconGap,
    double iconBoxSize = defaultIconBoxSize,
    double iconSize = defaultIconSize,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         value: value,
         gradient: gradient,
         onTap: onTap,
         type: _TileType.value,
         horizontalPadding: horizontalPadding,
         verticalPadding: verticalPadding,
         iconGap: iconGap,
         iconBoxSize: iconBoxSize,
         iconSize: iconSize,
       );

  const AccountHorizontalTileV2.widget({
    Key? key,
    required String iconPath,
    required String title,
    required Widget widget,
    required TileIconGradient gradient,
    required VoidCallback onTap,
    double horizontalPadding = defaultHorizontalPadding,
    double verticalPadding = defaultVerticalPadding,
    double iconGap = defaultIconGap,
    double iconBoxSize = defaultIconBoxSize,
    double iconSize = defaultIconSize,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         trailingWidget: widget,
         gradient: gradient,
         onTap: onTap,
         type: _TileType.widget,
         horizontalPadding: horizontalPadding,
         verticalPadding: verticalPadding,
         iconGap: iconGap,
         iconBoxSize: iconBoxSize,
         iconSize: iconSize,
       );

  const AccountHorizontalTileV2.sSwitch({
    Key? key,
    required String iconPath,
    required String title,
    required bool switchValue,
    required TileIconGradient gradient,
    required VoidCallback? onTap,
    String? subtitle,
    double horizontalPadding = defaultHorizontalPadding,
    double verticalPadding = defaultVerticalPadding,
    double iconGap = defaultIconGap,
    double iconBoxSize = defaultIconBoxSize,
    double iconSize = defaultIconSize,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         subtitle: subtitle,
         switchValue: switchValue,
         gradient: gradient,
         onTap: onTap,
         type: _TileType.sSwitch,
         horizontalPadding: horizontalPadding,
         verticalPadding: verticalPadding,
         iconGap: iconGap,
         iconBoxSize: iconBoxSize,
         iconSize: iconSize,
       );

  const AccountHorizontalTileV2.column({
    Key? key,
    required String iconPath,
    required String title,
    required Widget column,
    required TileIconGradient gradient,
    required VoidCallback onTap,
    double horizontalPadding = defaultHorizontalPadding,
    double verticalPadding = defaultVerticalPadding,
    double iconGap = defaultIconGap,
    double iconBoxSize = defaultIconBoxSize,
    double iconSize = defaultIconSize,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         columnChild: column,
         gradient: gradient,
         onTap: onTap,
         type: _TileType.column,
         horizontalPadding: horizontalPadding,
         verticalPadding: verticalPadding,
         iconGap: iconGap,
         iconBoxSize: iconBoxSize,
         iconSize: iconSize,
       );

  const AccountHorizontalTileV2.valueMore({
    Key? key,
    required String iconPath,
    required String title,
    required String value,
    required TileIconGradient gradient,
    required VoidCallback onTap,
    String? subtitle,
    double horizontalPadding = defaultHorizontalPadding,
    double verticalPadding = defaultVerticalPadding,
    double iconGap = defaultIconGap,
    double iconBoxSize = defaultIconBoxSize,
    double iconSize = defaultIconSize,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         value: value,
         subtitle: subtitle,
         gradient: gradient,
         onTap: onTap,
         type: _TileType.valueMore,
         horizontalPadding: horizontalPadding,
         verticalPadding: verticalPadding,
         iconGap: iconGap,
         iconBoxSize: iconBoxSize,
         iconSize: iconSize,
       );

  const AccountHorizontalTileV2.more({
    Key? key,
    required String iconPath,
    required String title,
    required TileIconGradient gradient,
    required VoidCallback onTap,
    String? subtitle,
    double horizontalPadding = defaultHorizontalPadding,
    double verticalPadding = defaultVerticalPadding,
    double iconGap = defaultIconGap,
    double iconBoxSize = defaultIconBoxSize,
    double iconSize = defaultIconSize,
  }) : this._(
         key: key,
         iconPath: iconPath,
         title: title,
         subtitle: subtitle,
         gradient: gradient,
         onTap: onTap,
         type: _TileType.more,
         horizontalPadding: horizontalPadding,
         verticalPadding: verticalPadding,
         iconGap: iconGap,
         iconBoxSize: iconBoxSize,
         iconSize: iconSize,
       );

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: BounceTapAnimation(
        minScale: 0.97,
        onTap: onTap,
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (type == _TileType.column) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildRow(context), columnChild!],
      );
    }
    return _buildRow(context);
  }

  Widget _buildRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding.w,
        vertical: verticalPadding.h,
      ),
      child: Row(
        children: [
          _buildIconBubble(),
          iconGap.horizontalSpace,
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
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: bodyM.copyWith(
                      color: context.textColor.withValues(alpha: 0.35),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
              ],
            ),
          ),
          8.horizontalSpace,
          _buildSuffix(context),
        ],
      ),
    );
  }

  Widget _buildIconBubble() {
    const radius = BorderRadius.all(Radius.circular(14));
    
    return SurfaceContainer.ellipse(
      size: Size.square(iconBoxSize),
      borderRadius: radius,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: gradient.gradient,
          borderRadius: radius,
        ),
        child: Center(
          child: CommonAppIcon(
            path: iconPath,
            size: iconSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildSuffix(BuildContext context) {
    switch (type) {
      case _TileType.value:
        return Text(
          value!,
          style: bodyL.copyWith(color: context.theme.colorScheme.secondary),
        );

      case _TileType.sSwitch:
        return AppSwitch(isChecked: switchValue!, onTap: onTap);

      case _TileType.widget:
        return trailingWidget!;

      case _TileType.more:
        return CommonAppIcon(
          path: UiKitAssets.arrowRightIos,
          color: context.iconColorTernary,
          size: 20,
        );

      case _TileType.valueMore:
        return Row(
          mainAxisSize: MainAxisSize.min,
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
