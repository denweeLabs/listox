part of 'subscription_cubit.dart';

@freezed
abstract class SubscriptionState with _$SubscriptionState {
  const SubscriptionState._();

  const factory SubscriptionState({
    UserSubscription? subscription,
    SubscriptionFailure? failure,
    SubscriptionPlans? plans,
    @Default(false) bool isInitializing,
    @Default(false) bool isPurchasing,
    @Default(false) bool isRestoring,
  }) = _SubscriptionState;

  bool get isPremium => subscription?.isActive ?? false;

  DateTime? get expiry => subscription?.expiresAt;

  bool get isBusy => isInitializing || isPurchasing || isRestoring;
}
