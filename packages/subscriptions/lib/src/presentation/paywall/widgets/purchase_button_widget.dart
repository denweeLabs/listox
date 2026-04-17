part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _PurchaseButton extends StatelessWidget {
  const _PurchaseButton({
    required this.strings,
    required this.theme,
    required this.selectedPlan,
    required this.isActivePlan,
    required this.isBusy,
    required this.onTap,
    required this.hasTrial,
  });

  final PaywallStrings strings;
  final PaywallTheme theme;
  final SubscriptionPlanType selectedPlan;
  final bool isActivePlan;
  final bool isBusy;
  final VoidCallback onTap;
  final bool hasTrial;

  @override
  Widget build(BuildContext context) {
    return _TapFade(
      onTap: isBusy ? null : onTap,
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: PhysicalModel(
          clipBehavior: Clip.hardEdge,
          color: theme.primaryAccentColor,
          borderRadius: theme.borderRadius,
          elevation: 8,
          shadowColor: theme.primaryAccentColor.withValues(alpha: 0.4),
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Positioned.fill(child: _PaywallBubbles()),
              if (isBusy) const Positioned.fill(child: _PaywallShimmer()),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                switchInCurve: Curves.easeOutCubic,
                switchOutCurve: Curves.easeInCubic,
                child: isBusy ? _buildLoading() : _buildLabel(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel() {
    final String label;
    if (isActivePlan) {
      label = strings.activePlanLabel;
    } else {
      label = selectedPlan != SubscriptionPlanType.yearly && hasTrial
          ? strings.tryForFreeLabel
          : strings.unlockLabel;
    }

    return Row(
      key: ValueKey(label),
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!isActivePlan) const SizedBox(width: 12),
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.6,
          ),
        ),
        if (!isActivePlan) ...[
          const SizedBox(width: 6),
          SvgPicture.asset(
            PaywallAssets.arrowRight,
            colorFilter:
                const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            width: 20,
          ),
        ],
      ],
    );
  }

  Widget _buildLoading() {
    return const SizedBox(
      key: ValueKey('loading'),
      width: 26,
      height: 26,
      child: _PaywallLoadingIndicator(),
    );
  }
}
