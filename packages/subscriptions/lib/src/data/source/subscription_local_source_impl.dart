import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:subscriptions/subscriptions.dart';

import '../../domain/source/subscription_local_source.dart';
import '../model/user_subscription_dto.dart';

class SubscriptionLocalSourceImpl implements SubscriptionLocalSource {
  final String envPrefix;
  
  SubscriptionLocalSourceImpl({required this.envPrefix});

  SharedPreferences? _preferences;
  UserSubscription? _cached;

  String get _key => '${envPrefix}USER_SUBSCRIPTION';

  @override
  UserSubscription? get() => _cached;

  @override
  Future<void> initialize(SubscriptionProductIds productIds) async {
    _preferences ??= await SharedPreferences.getInstance();

    final jsonString = _preferences?.getString(_key);
    if (jsonString == null) return;

    final data = jsonDecode(jsonString) as Map<String, dynamic>?;
    if (data != null) {
      _cached = UserSubscriptionDto.fromJson(data).toDomain(productIds: productIds);
    }
  }

  @override
  Future<void> save(
    UserSubscription subscription,
    SubscriptionProductIds productIds,
  ) async {
    _cached = subscription;

    final json = UserSubscriptionDto.fromDomain(
      subscription: subscription,
      productIds: productIds,
    ).toJson();
    _preferences ??= await SharedPreferences.getInstance();
    await _preferences?.setString(_key, jsonEncode(json));
  }

  @override
  Future<void> delete() async {
    _cached = null;
    
    _preferences ??= await SharedPreferences.getInstance();
    await _preferences?.remove(_key);
  }
}
