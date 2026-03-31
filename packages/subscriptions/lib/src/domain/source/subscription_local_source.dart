import 'package:subscriptions/subscriptions.dart';

abstract class SubscriptionLocalSource {
  Future<void> initialize(SubscriptionProductIds productIds);
  UserSubscription? get();
  Future<void> save(UserSubscription subscription, SubscriptionProductIds productIds);
  Future<void> delete();
}
