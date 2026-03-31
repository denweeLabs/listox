import 'package:subscriptions/src/domain/entity/subscription_plans.dart';
import 'package:subscriptions/subscriptions.dart';

class UserSubscriptionDto {
  final String productId;
  final String expiresAtIso;

  const UserSubscriptionDto({
    required this.productId,
    required this.expiresAtIso,
  });

  factory UserSubscriptionDto.fromDomain({
    required UserSubscription subscription,
    required SubscriptionProductIds productIds,
  }) {
    return UserSubscriptionDto(
        productId: subscription.planType.productId(productIds),
        expiresAtIso: subscription.expiresAt.toUtc().toIso8601String(),
      );
  }

  UserSubscription toDomain({required SubscriptionProductIds productIds}) {
    return UserSubscription(
      planType: SubscriptionPlanType.fromProductId(productId, productIds),
      expiresAt: DateTime.parse(expiresAtIso),
    );
  }

  factory UserSubscriptionDto.fromJson(Map<String, dynamic> json) =>
      UserSubscriptionDto(
        productId: json['product_id'] as String,
        expiresAtIso: json['expires_at'] as String,
      );

  Map<String, dynamic> toJson() => {
    'product_id': productId,
    'expires_at': expiresAtIso,
  };
}
