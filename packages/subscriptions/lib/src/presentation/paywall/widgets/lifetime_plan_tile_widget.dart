part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _LifetimePlanTile extends StatelessWidget {
  const _LifetimePlanTile({
    required this.theme,
    required this.strings,
    required this.isSelected,
    required this.isActiveSubscription,
    required this.price,
    required this.onTap,
    this.activeExpirySubtitle,
  });

  final PaywallTheme theme;
  final PaywallStrings strings;
  final bool isSelected;
  final bool isActiveSubscription;
  final String price;
  final VoidCallback onTap;
  final String? activeExpirySubtitle;

  @override
  Widget build(BuildContext context) {
    final subtitleStyle = TextStyle(
      fontSize: 16.0,
      color: theme.textColor.withValues(alpha: 0.65),
      fontWeight: FontWeight.w500,
      letterSpacing: -0.4,
    );

    final subtitle = isActiveSubscription && activeExpirySubtitle != null
        ? activeExpirySubtitle!
        : strings.lifetimePriceSubtitleBuilder(price);

    return CorePlanTile(
      title: strings.lifetimePlanTitle,
      subtitle: subtitle,
      isSelected: isSelected,
      theme: theme,
      borderRadius: theme.borderRadius,
      suffix: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Colors.redAccent,
          ),
          child: Stack(
            children: [
              const Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  child: _PaywallShimmer(
                    interval: Duration(milliseconds: 1000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(
                  strings.bestValueBadgeText,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.3,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
