// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';
import 'package:listox/di/di.dart';
import 'package:listox/di/env.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app_core/app_core.dart';
import 'package:ui_kit/ui_kit.dart';

class AboutAppPage extends StatefulWidget {
  const AboutAppPage({super.key, this.onBack});

  final VoidCallback? onBack;

  static const routeName = 'AboutAppPage';

  @override
  State<AboutAppPage> createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage> {
  final key = GlobalKey<CommonWebviewState>();

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Column(
        children: [
          SizedBox(height: context.topPadding + 24.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppBackButton(
                  onTap: _onBack,
                  brightness: AppIconButtonBrightness.solid,
                ),
                Text(_getTitle(), style: h4.copyWith(color: context.textColor)),
                AppIconButton(
                  onTap: () => CoreLauncherUtil.launchUrl(AppConstants.aboutAppUrl),
                  brightness: AppIconButtonBrightness.solid,
                  iconPath: AppAssets.globeLinear,
                ),
              ],
            ),
          ),
          24.verticalSpace,
          Expanded(
            child: CommonWebview(key: key, url: AppConstants.aboutAppUrl),
          ),
          if (Platform.isAndroid) SizedBox(height: context.bottomPadding),
        ],
      ),
    );
  }

  String _getTitle() {
    final isProd = getIt<String>(instanceName: 'ENV') == Env.prod;
    final packageInfo = getIt<AppPackageInfo>();

    return '${context.tr(LocaleKeys.appTitle)} ${packageInfo.version}${!isProd ? ' (${packageInfo.buildNumber})' : ''}';
  }

  void _onBack() async {
    final webviewState = key.currentState;

    if (Platform.isIOS || webviewState?.controller == null) {
      return _pop();
    }

    final canGoBack = await webviewState!.controller!.canGoBack();
    if (canGoBack) {
      return webviewState.controller!.goBack();
    }

    _pop();
  }

  void _pop() {
    if (widget.onBack != null) {
      widget.onBack!();
    } else {
      Navigator.of(context).pop();
    }
  }
}
