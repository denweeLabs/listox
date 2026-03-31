import 'package:flutter/material.dart';
import 'package:ui_kit/src/config/ui_kit_config.dart';

extension BuildContextExtensions on BuildContext {
  double get topPadding => MediaQuery.of(this).padding.top;
  double get bottomPadding => MediaQuery.of(this).padding.bottom;
  String get fontFamily => UiKitConfig.currentFontFamily;
}
