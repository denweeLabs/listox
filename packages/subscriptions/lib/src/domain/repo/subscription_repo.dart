import 'package:dartz/dartz.dart';
import 'package:subscriptions/src/domain/entity/subscription_plans.dart';

import '../entity/subscription_failure.dart';
import '../entity/user_subscription.dart';

abstract class SubscriptionRepo {
  Future<UserSubscription?> getCachedSubscription();
  Future<Either<SubscriptionFailure, (SubscriptionPlans, UserSubscription?)>> initialize();
  Future<Either<SubscriptionFailure, UserSubscription?>> getSubscription();
  Future<Either<SubscriptionFailure, UserSubscription?>> purchase(SubscriptionPlan plan);
  Future<Either<SubscriptionFailure, UserSubscription?>> restore();
}
