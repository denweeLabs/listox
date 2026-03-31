import 'package:purchases_flutter/errors.dart';

enum SubscriptionFailure {
  configuration,
  packagesMissing,
  purchaseNotAllowed,
  purchaseCancelled,
  paymentPending,
  paymentFailed,
  alreadySubscribed,
  subscriptionNotFound,
  internalServer,
  connectionTimeout,
  insufficientPermissions,
  unexpected;

  static SubscriptionFailure fromPurchasesError(PurchasesErrorCode error) {
    switch (error) {
      case PurchasesErrorCode.configurationError: return SubscriptionFailure.configuration;
      case PurchasesErrorCode.invalidAppUserIdError: return SubscriptionFailure.configuration;
      case PurchasesErrorCode.productNotAvailableForPurchaseError: return SubscriptionFailure.purchaseNotAllowed;
      case PurchasesErrorCode.purchaseNotAllowedError: return SubscriptionFailure.purchaseNotAllowed;
      case PurchasesErrorCode.purchaseCancelledError: return SubscriptionFailure.purchaseCancelled;
      case PurchasesErrorCode.paymentPendingError: return SubscriptionFailure.paymentPending;
      case PurchasesErrorCode.storeProblemError: return SubscriptionFailure.paymentFailed;
      case PurchasesErrorCode.testStoreSimulatedPurchaseError: return SubscriptionFailure.paymentFailed;
      case PurchasesErrorCode.productAlreadyPurchasedError: return SubscriptionFailure.alreadySubscribed;
      case PurchasesErrorCode.receiptAlreadyInUseError: return SubscriptionFailure.insufficientPermissions;
      case PurchasesErrorCode.networkError: return SubscriptionFailure.connectionTimeout;
      case PurchasesErrorCode.offlineConnectionError: return SubscriptionFailure.connectionTimeout;
      case PurchasesErrorCode.customerInfoError: return SubscriptionFailure.internalServer;
      case PurchasesErrorCode.unknownBackendError: return SubscriptionFailure.internalServer;
      default: return SubscriptionFailure.unexpected;
    }
  }

  String get defaultMessage => switch (this) {
    configuration => 'Subscription service is unavailable. Please try again later.',
    packagesMissing => 'No subscription plans available. Please try again.',
    purchaseNotAllowed => 'Purchases are not allowed on this device.',
    purchaseCancelled => '',
    paymentPending => 'Your payment is pending. Please check back shortly.',
    paymentFailed => 'Payment failed. Please check your payment method and try again.',
    alreadySubscribed => 'You are already subscribed.',
    subscriptionNotFound => 'No active subscription found. Try restoring purchases.',
    internalServer => 'Server error. Please try again later.',
    connectionTimeout => 'No internet connection. Please check your network and try again.',
    insufficientPermissions => 'This purchase is linked to a different account.',
    unexpected => 'Something went wrong. Please try again.',
  };
}
