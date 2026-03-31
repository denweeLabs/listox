part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _PaywallBubbles extends StatelessWidget {
  const _PaywallBubbles();

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: FloatingBubbles.alwaysRepeating(
        noOfBubbles: 8,
        colorsOfBubbles: [Colors.white.withAlpha(30)],
        sizeFactor: 0.05,
        opacity: 25,
        speed: BubbleSpeed.slow,
      ),
    );
  }
}
