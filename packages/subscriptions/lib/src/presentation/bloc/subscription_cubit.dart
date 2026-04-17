import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:subscriptions/src/domain/entity/subscription_plans.dart';
import 'package:subscriptions/src/domain/repo/subscription_repo.dart';

import '../../domain/entity/subscription_config.dart';
import '../../domain/entity/subscription_failure.dart';
import '../../domain/entity/user_subscription.dart';

part 'subscription_state.dart';
part 'subscription_cubit.freezed.dart';

class SubscriptionCubit extends Cubit<SubscriptionState> {
  final SubscriptionRepo _subscriptionRepo;
  final SubscriptionConfig config;

  SubscriptionCubit({
    required this.config,
    required SubscriptionRepo subscriptionRepo,
  }) : _subscriptionRepo = subscriptionRepo,
       super(const SubscriptionState());

  Future<void> init() async {
    if (state.isInitializing) return;
    
    final cached = await _subscriptionRepo.getCachedSubscription();

    emit(state.copyWith(
      subscription: cached,
      isInitializing: true,
      failure: null,
    ));

    final result = await _subscriptionRepo.initialize();
    emit(result.fold(
      (failure) {
        debugPrint('[APP SUBSCRIPTIONS] - Initialization Failure Occured: $failure');
        return state.copyWith(isInitializing: false, failure: failure);
      },
      (success) {
        debugPrint('[APP SUBSCRIPTIONS] - Initialization Success: $success');
        return state.copyWith(
          isInitializing: false,
          plans: success.$1,
          subscription: success.$2,
          failure: null,
        );
      },
    ));
  }

  Future<void> purchase(SubscriptionPlan plan) async {
    emit(state.copyWith(isPurchasing: true, failure: null));
    
    final result = await _subscriptionRepo.purchase(plan);

    debugPrint('purchase: $result');

    emit(result.fold(
      (failure) => state.copyWith(isPurchasing: false, failure: failure),
      (subscription) => state.copyWith(
        isPurchasing: false,
        subscription: subscription,
        failure: null,
      ),
    ));
  }

  Future<void> restore() async {
    emit(state.copyWith(isRestoring: true, failure: null));

    final result = await _subscriptionRepo.restore();

    emit(result.fold(
      (failure) => state.copyWith(isRestoring: false, failure: failure),
      (subscription) => state.copyWith(
        isRestoring: false,
        subscription: subscription,
        failure: null,
      ),
    ));
  }
}
