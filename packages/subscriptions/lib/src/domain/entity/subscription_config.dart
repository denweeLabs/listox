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
  final String weekly;
  final String yearly;

  const SubscriptionProductIds({required this.weekly, required this.yearly});
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
