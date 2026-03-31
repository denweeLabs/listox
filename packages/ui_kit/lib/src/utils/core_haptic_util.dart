import 'package:flutter/services.dart';

class CoreHapticUtil {
  static bool Function() _isEnabled = () => true;

  static void configure({required bool Function() isEnabled}) {
    _isEnabled = isEnabled;
  }

  static void light() {
    if (_isEnabled()) HapticFeedback.lightImpact();
  }

  static void medium() {
    if (_isEnabled()) HapticFeedback.mediumImpact();
  }

  static void heavy() {
    if (_isEnabled()) HapticFeedback.heavyImpact();
  }

  static void vibrate() {
    if (_isEnabled()) HapticFeedback.vibrate();
  }
}
