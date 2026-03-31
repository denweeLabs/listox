import 'package:subscriptions/src/domain/entity/subscription_plans.dart';

class UserSubscription {
  final SubscriptionPlanType planType;
  final DateTime expiresAt;

  const UserSubscription({required this.planType, required this.expiresAt});

  bool get isActive => expiresAt.isAfter(DateTime.now().toUtc());

  @override
  String toString() => 'ActiveSubscription(plan: $planType / expiry: $expiresAt); isActive: $isActive';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserSubscription &&
          planType == other.planType &&
          expiresAt == other.expiresAt;

  @override
  int get hashCode => Object.hash(planType, expiresAt);
}
