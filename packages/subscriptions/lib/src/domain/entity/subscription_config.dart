enum SubscriptionVariant {
  weeklyAndYearly,
  monthlyAndYearly,
  weeklyAndLifetime,
  monthlyAndLifetime,
}

extension SubscriptionVariantX on SubscriptionVariant {
  bool get hasLifetime =>
      this == SubscriptionVariant.weeklyAndLifetime ||
      this == SubscriptionVariant.monthlyAndLifetime;

  bool get hasYearly =>
      this == SubscriptionVariant.weeklyAndYearly ||
      this == SubscriptionVariant.monthlyAndYearly;

  bool get hasWeekly =>
      this == SubscriptionVariant.weeklyAndYearly ||
      this == SubscriptionVariant.weeklyAndLifetime;

  bool get hasMonthly =>
      this == SubscriptionVariant.monthlyAndYearly ||
      this == SubscriptionVariant.monthlyAndLifetime;
}

/// Controls which plan tile is pre-selected when the paywall opens.
enum PaywallDefaultSelection {
  /// Pre-selects the short-cycle plan (weekly or monthly).
  shortPlan,

  /// Pre-selects the long-cycle plan (yearly or lifetime).
  longPlan,
}

class SubscriptionApiKeys {
  final String apple;
  final String google;
  final String test;

  const SubscriptionApiKeys({
    required this.apple,
    required this.google,
    required this.test,
  });
}

class SubscriptionProductIds {
  const SubscriptionProductIds.weeklyAndYearly({
    required this.weekly,
    required this.yearly,
    this.trialPeriodDays,
  }) : monthly = '',
       lifetime = '',
       variant = SubscriptionVariant.weeklyAndYearly;

  const SubscriptionProductIds.monthlyAndYearly({
    required this.monthly,
    required this.yearly,
    this.trialPeriodDays,
  }) : weekly = '',
       lifetime = '',
       variant = SubscriptionVariant.monthlyAndYearly;

  const SubscriptionProductIds.weeklyAndLifetime({
    required this.weekly,
    required this.lifetime,
    this.trialPeriodDays,
  }) : monthly = '',
       yearly = '',
       variant = SubscriptionVariant.weeklyAndLifetime;

  const SubscriptionProductIds.monthlyAndLifetime({
    required this.monthly,
    required this.lifetime,
    this.trialPeriodDays,
  }) : weekly = '',
       yearly = '',
       variant = SubscriptionVariant.monthlyAndLifetime;

  final String weekly;
  final String monthly;
  final String yearly;
  final String lifetime;
  final SubscriptionVariant variant;

  /// Number of trial days for the short plan (weekly or monthly).
  /// `null` means no trial period.
  final int? trialPeriodDays;
}

class SubscriptionConfig {
  final SubscriptionApiKeys apiKeys;
  final String entitlementId;
  final bool isDebug;
  final String envPrefix;
  final SubscriptionProductIds productIds;
  final String? termsUrl;
  final String? privacyUrl;

  /// Which plan tile is pre-selected when the paywall opens.
  /// Defaults to [PaywallDefaultSelection.shortPlan].
  final PaywallDefaultSelection defaultSelectedPlan;

  const SubscriptionConfig({
    required this.apiKeys,
    required this.entitlementId,
    required this.isDebug,
    required this.envPrefix,
    required this.productIds,
    this.termsUrl,
    this.privacyUrl,
    this.defaultSelectedPlan = PaywallDefaultSelection.shortPlan,
  });
}
