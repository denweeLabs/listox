// // ignore_for_file: unused_element_parameter

part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _PaywallLoadingIndicator extends StatefulWidget {
  const _PaywallLoadingIndicator();

  @override
  State<_PaywallLoadingIndicator> createState() =>
      _PaywallLoadingIndicatorState();
}

class _PaywallLoadingIndicatorState extends State<_PaywallLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(
            vsync: this,
            duration: const Duration(milliseconds: 2500),
          )
          ..addListener(() {
            if (mounted) {
              setState(() {});
            }
          })
          ..repeat(reverse: true);
    _animation = Tween(begin: -0.5, end: 1.0).animate(
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
    return Center(
      child: Stack(
        children: List.generate(2, (i) {
          return Transform.scale(
            scale: (1 - i - _animation.value.abs()).abs(),
            child: SizedBox.fromSize(
              size: const Size.square(42),
              child: _itemBuilder(i),
            ),
          );
        }),
      ),
    );
  }

  Widget _itemBuilder(int index) => DecoratedBox(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white.withValues(alpha: 0.4),
    ),
  );
}
