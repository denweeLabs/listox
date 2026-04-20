import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_kit/src/app/core_app_storage.dart';

class CoreAppWrapper extends StatefulWidget {
  const CoreAppWrapper({
    super.key,
    required this.child,
    required this.isPremium,
    this.onAppEnterCount,
    this.onFreemiumEnterCount,
    this.onInitialLocale,
    this.envPrefix,
  });

  final Widget child;
  final bool isPremium;
  final void Function(int count, bool isOnboarding)? onAppEnterCount;
  final void Function(int count)? onFreemiumEnterCount;
  final void Function(Locale locale)? onInitialLocale;
  final String? envPrefix;

  static _CoreAppWrapperState _stateOf(BuildContext context) =>
      context.findAncestorStateOfType<_CoreAppWrapperState>()!;

  static bool isOnboarding(BuildContext context) =>
      _stateOf(context)._isOnboarding;

  static Future<void> completeOnboarding(BuildContext context) =>
      _stateOf(context)._completeOnboarding();

  @override
  State<CoreAppWrapper> createState() => _CoreAppWrapperState();
}

class _CoreAppWrapperState extends State<CoreAppWrapper> {
  CoreAppStorage? _storage;
  bool _isOnboarding = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _onLaunch());
  }

  Future<void> _onLaunch() async {
    _storage = await CoreAppStorage.init(envPrefix: widget.envPrefix);
    _isOnboarding = _storage!.isOnboarding;

    final count = await _storage!.increaseLaunchCount();

    if (count == 1) {
      final systemLocale = PlatformDispatcher.instance.locale;
      widget.onInitialLocale?.call(systemLocale);
    }

    widget.onAppEnterCount?.call(count, _isOnboarding);

    if (!_isOnboarding) {
      if (widget.isPremium) {
        await _storage!.resetFreemiumCount();
      } else {
        final freemiumCount = await _storage!.increaseFreemiumCount();
        widget.onFreemiumEnterCount?.call(freemiumCount);
      }
    }
  }

  Future<void> _completeOnboarding() async {
    _storage?.setOnboarding(false);
    _isOnboarding = false;
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
