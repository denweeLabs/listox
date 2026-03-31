part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _TapFade extends StatefulWidget {
  const _TapFade({this.onTap, required this.child});

  final VoidCallback? onTap;
  final Widget child;

  @override
  State<_TapFade> createState() => _TapFadeState();
}

class _TapFadeState extends State<_TapFade>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
    );
    _opacity = Tween<double>(begin: 1.0, end: 0.6).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.onTap == null) return widget.child;

    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      behavior: HitTestBehavior.translucent,
      child: FadeTransition(opacity: _opacity, child: widget.child),
    );
  }
}
