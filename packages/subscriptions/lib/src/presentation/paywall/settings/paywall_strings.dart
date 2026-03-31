import 'package:flutter/material.dart';
import 'package:subscriptions/src/domain/entity/subscription_failure.dart';

@immutable
class PaywallStrings {
  const PaywallStrings({
    required this.title,
    required this.yearlyPlanTitle,
    required this.weeklyPlanTitle,
    required this.yearlyPriceSubtitleBuilder,
    required this.weeklyPriceSubtitleBuilder,
    required this.activePlanSubtitleBuilder,
    required this.discountBadgeBuilder,
    required this.freeTrialLabel,
    required this.freeTrialBadgeText,
    required this.tryForFreeLabel,
    required this.unlockLabel,
    required this.activePlanLabel,
    required this.restoreLabel,
    required this.termsLabel,
    required this.privacyLabel,
    required this.purchaseErrorTitle,
    required this.restoreErrorTitle,
    required this.errorSubtitleBuilder,
    required this.successDialogTitle,
    required this.successSubtitleBuilder,
    required this.successDialogButtonLabel,
  });

  final String title;
  final String yearlyPlanTitle;
  final String weeklyPlanTitle;
  final Widget Function(String actualPrice, String originalPrice, TextStyle style) yearlyPriceSubtitleBuilder;
  final String Function(String price) weeklyPriceSubtitleBuilder;
  final String Function(String expiryDate) activePlanSubtitleBuilder;
  final String Function(int percent) discountBadgeBuilder;
  final String freeTrialLabel;
  final String freeTrialBadgeText;
  final String tryForFreeLabel;
  final String unlockLabel;
  final String activePlanLabel;
  final String restoreLabel;
  final String termsLabel;
  final String privacyLabel;
  final String purchaseErrorTitle;
  final String restoreErrorTitle;
  final String Function(SubscriptionFailure failure) errorSubtitleBuilder;
  final String successDialogTitle;
  final String Function(String expiryDate) successSubtitleBuilder;
  final String successDialogButtonLabel;
}
