import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:subscriptions/src/domain/entity/subscription_plans.dart';

import '../../domain/entity/subscription_config.dart';
import '../../domain/entity/subscription_failure.dart';
import '../../domain/entity/user_subscription.dart';
import '../../domain/repo/subscription_repo.dart';
import '../../domain/source/subscription_local_source.dart';

class SubscriptionRepoImpl implements SubscriptionRepo {
  final SubscriptionConfig _config;
  final SubscriptionLocalSource _localSource;

  SubscriptionRepoImpl({
    required SubscriptionConfig config,
    required SubscriptionLocalSource localSource,
  }) : _config = config,
       _localSource = localSource;

  bool _localInitialized = false;
  SubscriptionPlans? _plans;

  String get _publicApiKey {
    if (_config.isDebug) return _config.apiKeys.test;
    if (Platform.isIOS) return _config.apiKeys.apple;
    if (Platform.isAndroid) return _config.apiKeys.google;
    throw UnsupportedError('Platform is not supported');
  }

  @override
  Future<Either<SubscriptionFailure, (SubscriptionPlans, UserSubscription?)>> initialize() async {
    try {
      final config = PurchasesConfiguration(_publicApiKey);
      await Purchases.configure(config);

      final offerings = await Purchases.getOfferings();
      try {
        _plans = SubscriptionPlans.fromOfferings(offerings);
        final failureOrSuccess = await getSubscription();
        return failureOrSuccess.fold(
          (failure) => left(failure),
          (subscription) => right((_plans!, subscription)),
        );
      } catch (_) {
        return left(SubscriptionFailure.packagesMissing);
      }
    } on PlatformException catch (error) {
      final failure = SubscriptionFailure.fromPurchasesError(
        PurchasesErrorHelper.getErrorCode(error),
      );
      return left(failure);
    } catch (_) {
      return left(SubscriptionFailure.unexpected);
    }
  }

  @override
  Future<Either<SubscriptionFailure, UserSubscription?>> getSubscription() async {
    try {
      final info = await Purchases.getCustomerInfo();
      final activeSubscription = _extractActiveSubscription(info);
      unawaited(_updateCache(activeSubscription));
      return right(activeSubscription);
    } on PlatformException catch (error) {
      final failure = SubscriptionFailure.fromPurchasesError(
        PurchasesErrorHelper.getErrorCode(error),
      );
      return left(failure);
    } catch (_) {
      return left(SubscriptionFailure.unexpected);
    }
  }

  @override
  Future<UserSubscription?> getCachedSubscription() async {
    if (!_localInitialized) {
      await _localSource.initialize(_config.productIds);
      _localInitialized = true;
    }
    return _localSource.get();
  }

  @override
  Future<Either<SubscriptionFailure, UserSubscription?>> purchase(
    SubscriptionPlan plan,
  ) async {
    try {
      final params = PurchaseParams.package(plan.package);
      final result = await Purchases.purchase(params);
      final activeSubscription = _extractActiveSubscription(
        result.customerInfo,
      );
      unawaited(_updateCache(activeSubscription));
      return right(activeSubscription);
    } on PlatformException catch (error) {
      final failure = SubscriptionFailure.fromPurchasesError(
        PurchasesErrorHelper.getErrorCode(error),
      );
      return left(failure);
    } catch (error) {
      return left(SubscriptionFailure.unexpected);
    }
  }

  @override
  Future<Either<SubscriptionFailure, UserSubscription?>> restore() async {
    try {
      final result = await Purchases.restorePurchases();
      final activeSubscription = _extractActiveSubscription(result);
      if (activeSubscription == null) {
        return left(SubscriptionFailure.subscriptionNotFound);
      }
      unawaited(_updateCache(activeSubscription));
      return right(activeSubscription);
    } on PlatformException catch (error) {
      final failure = SubscriptionFailure.fromPurchasesError(
        PurchasesErrorHelper.getErrorCode(error),
      );
      return left(failure);
    } catch (error) {
      return left(SubscriptionFailure.unexpected);
    }
  }

  Future<void> _updateCache(UserSubscription? subscription) async {
    if (subscription != null) {
      return _localSource.save(subscription, _config.productIds);
    } else {
      return _localSource.delete();
    }
  }

  UserSubscription? _extractActiveSubscription(CustomerInfo info) {
    final entitlement = info.entitlements.active[_config.entitlementId];
    if (entitlement == null) return null;

    final expiresAt = DateTime.tryParse(entitlement.expirationDate ?? '');
    if (expiresAt == null) return null;

    return UserSubscription(
      planType: SubscriptionPlanType.fromProductId(
        entitlement.productIdentifier,
        _config.productIds,
      ),
      expiresAt: expiresAt,
    );
  }
}
