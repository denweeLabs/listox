import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/src/config/ui_kit_config.dart';

String get commonFontFamily {
  return UiKitConfig.currentFontFamily;
}

TextStyle get h0 {
  return TextStyle(
    fontSize: 36.sp,
    letterSpacing: -1.0,
    height: 0.0,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w800,
  );
}

TextStyle get h0_5 {
  return TextStyle(
    fontSize: 28.sp,
    letterSpacing: -0.3,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w800,
  );
}

TextStyle get h1 {
  return TextStyle(
    fontSize: 24.sp,
    letterSpacing: -0.2,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w700,
  );
}

TextStyle get h2 {
  return TextStyle(
    fontSize: 22.sp,
    letterSpacing: -0.6,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w700,
  );
}

TextStyle get h3 {
  return TextStyle(
    fontSize: 20.sp,
    letterSpacing: -0.2,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w600,
  );
}

TextStyle get h4 {
  return TextStyle(
    fontSize: 18.sp,
    letterSpacing: -0.1,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w600,
  );
}

TextStyle get h5 {
  return TextStyle(
    fontSize: 16.sp,
    letterSpacing: -0.1,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w600,
  );
}

TextStyle get h6 {
  return TextStyle(
    fontSize: 14.sp,
    letterSpacing: 0.1,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w600,
  );
}

TextStyle get h7 {
  return TextStyle(
    fontSize: 12.sp,
    letterSpacing: -0.1,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w600,
  );
}

TextStyle get bodyL {
  return TextStyle(
    fontSize: 16.sp,
    letterSpacing: -0.2,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w600,
  );
}

TextStyle get bodyM {
  return TextStyle(
    fontSize: 14.sp,
    letterSpacing: -0.1,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w600,
  );
}

TextStyle get bodyS {
  return TextStyle(
    fontSize: 12.sp,
    letterSpacing: -0.1,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w600,
  );
}

TextStyle get bodyXS {
  return TextStyle(
    fontSize: 10.sp,
    letterSpacing: -0.1,
    fontFamily: commonFontFamily,
    fontWeight: FontWeight.w600,
  );
}

TextStyle get solidButton {
  return TextStyle(
    height: 0.0,
    fontSize: 14.sp,
    letterSpacing: 0.6,
    fontWeight: FontWeight.w900,
    fontFamily: commonFontFamily,
  );
}

TextStyle get textButton {
  return TextStyle(
    height: 0.0,
    fontSize: 14.sp,
    fontWeight: FontWeight.w900,
    letterSpacing: 0.75,
    fontFamily: commonFontFamily,
  );
}

TextStyle get textFieldHint {
  return TextStyle(
    fontSize: 16.sp,
    letterSpacing: -0.1,
    height: 2,
    fontWeight: FontWeight.w500,
    fontFamily: commonFontFamily,
  );
}

TextStyle get textField {
  return TextStyle(
    fontSize: 16.sp,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w600,
    fontFamily: commonFontFamily,
  );
}

TextStyle get dialogTitle {
  return TextStyle(
    fontSize: 20.sp,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w700,
    fontFamily: commonFontFamily,
  );
}

TextStyle get dialogSubtitle {
  return TextStyle(
    fontSize: 14.sp,
    letterSpacing: -0.1,
    fontWeight: FontWeight.w600,
    fontFamily: commonFontFamily,
  );
}
