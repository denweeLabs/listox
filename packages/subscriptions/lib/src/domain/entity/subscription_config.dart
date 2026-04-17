enum SubscriptionVariant { weekly, monthly }

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
  const SubscriptionProductIds.weekly({
    required this.weekly,
    required this.yearly,
    required this.trialPeriodDays,
  }) : monthly = '', variant = SubscriptionVariant.weekly;

  const SubscriptionProductIds.monthly({
    required this.monthly,
    required this.yearly,
    required this.trialPeriodDays,
  }) : weekly = '', variant = SubscriptionVariant.monthly;

  final String weekly;
  final String monthly;
  final String yearly;
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

  const SubscriptionConfig({
    required this.apiKeys,
    required this.entitlementId,
    required this.isDebug,
    required this.envPrefix,
    required this.productIds,
    this.termsUrl,
    this.privacyUrl,
  });
}
