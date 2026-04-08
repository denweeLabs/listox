import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/ui_kit.dart';

Future<T?> showOnboardingSheet<T>(
  BuildContext context, {
  required Widget Function(BuildContext, Widget) builder,
  required Widget home,
}) {
  return showModalBottomSheet(
    context: context,
    isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    sheetAnimationStyle: const AnimationStyle(
      duration: Duration(milliseconds: 300),
    ),
    builder: (_) => Padding(
      padding: EdgeInsets.only(top: context.topPadding + 12.h),
      child: builder(context, _Base(home)),
    ),
  );
}

class _Base extends StatefulWidget {
  const _Base(this.home);

  final Widget home;

  static const topBorderRadius = BorderRadius.vertical(
    top: Radius.circular(24),
  );

  @override
  State<_Base> createState() => _BaseState();
}

class _BaseState extends State<_Base> {
  final _controller = SubpagesController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: ClipRRect(
        borderRadius: _Base.topBorderRadius,
        child: ColoredBox(
          color: context.theme.colorScheme.surface,
          child: CommonSubpagesNavigator(
            controller: _controller,
            home: widget.home,
          ),
        ),
      ),
    );
  }
}
