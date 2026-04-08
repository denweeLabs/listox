part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _WeeklyPlanTile extends StatelessWidget {
  const _WeeklyPlanTile({
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
    final subtitle = isActiveSubscription && activeExpirySubtitle != null
        ? activeExpirySubtitle!
        : strings.weeklyPriceSubtitleBuilder(price);

    return CorePlanTile(
      title: strings.weeklyPlanTitle,
      subtitle: subtitle,
      isSelected: isSelected,
      borderRadius: theme.borderRadius,
      theme: theme,
      suffix: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: Text(
          strings.freeTrialBadgeText,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.4,
            color: theme.textColor,
            height: 0
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
