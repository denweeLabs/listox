/// Global configuration for the animate_do_plus package.
/// Call [AnimateDoConfig.configure] once at app startup.
class AnimateDoConfig {
  AnimateDoConfig._();

  static void Function()? _hapticFeedback;

  /// Configure the package with app-specific callbacks and defaults.
  ///
  /// [hapticFeedback] — optional callback triggered on tap-down in
  /// tap animations. Pass e.g. `HapticUtil.light` from the host app.
  ///
  /// [loadingIndicatorColor] — default color for loading indicator widgets.
  static void configure({
    void Function()? hapticFeedback,
  }) {
    _hapticFeedback = hapticFeedback;
  }

  /// Triggers the haptic feedback callback if one has been configured.
  static void triggerHaptic() => _hapticFeedback?.call();
}
