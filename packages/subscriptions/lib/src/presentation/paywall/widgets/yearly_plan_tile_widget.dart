part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _YearlyPlanTile extends StatelessWidget {
  const _YearlyPlanTile({
    required this.theme,
    required this.strings,
    required this.isSelected,
    required this.isActiveSubscription,
    required this.actualPrice,
    required this.originalPrice,
    required this.discountPercent,
    required this.onTap,
    this.activeExpirySubtitle,
  });

  final PaywallTheme theme;
  final PaywallStrings strings;
  final bool isSelected;
  final bool isActiveSubscription;
  final String actualPrice;
  final String originalPrice;
  final int discountPercent;
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

    return CorePlanTile(
      title: strings.yearlyPlanTitle,
      isSelected: isSelected,
      theme: theme,
      borderRadius: theme.borderRadius,
      subtitleWidget: isActiveSubscription && activeExpirySubtitle != null
          ? Text(
              activeExpirySubtitle!,
              style: subtitleStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          : strings.yearlyPriceSubtitleBuilder(
              actualPrice,
              originalPrice,
              subtitleStyle,
            ),
      suffix: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            color: Colors.redAccent,
          ),
          child: Stack(
            children: [
              const Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  child: _PaywallShimmer(interval: Duration(milliseconds: 1000),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(
                  strings.discountBadgeBuilder(discountPercent),
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
