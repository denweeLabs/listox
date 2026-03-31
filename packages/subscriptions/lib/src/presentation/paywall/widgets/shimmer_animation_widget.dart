part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _PaywallShimmer extends StatelessWidget {
  const _PaywallShimmer({this.interval = Duration.zero});

  final Duration interval;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Shimmer(
        colorOpacity: 0.4,
        color: Colors.white,
        duration: const Duration(milliseconds: 2000),
        interval: interval,
        child: const SizedBox.shrink(),
      ),
    );
  }
}
