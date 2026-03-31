import 'package:intl/intl.dart';
import 'package:purchases_flutter/models/offerings_wrapper.dart';
import 'package:purchases_flutter/models/package_wrapper.dart';
import 'package:subscriptions/subscriptions.dart';

enum SubscriptionPlanType {
  weekly,
  yearly;
  
  static SubscriptionPlanType fromProductId(String id, SubscriptionProductIds ids) {
    if (id == ids.weekly) return SubscriptionPlanType.weekly;
    if (id == ids.yearly) return SubscriptionPlanType.yearly;
    throw UnsupportedError('Plan type not supported');
  }
}

extension SubscriptionPlanTypeX on SubscriptionPlanType {
  String productId(SubscriptionProductIds ids) {
    switch (this) {
      case SubscriptionPlanType.weekly: return ids.weekly;
      case SubscriptionPlanType.yearly: return ids.yearly;
    }
  }
}

class SubscriptionPlans {
  final SubscriptionPlan weekly;
  final SubscriptionPlan yearly;

  const SubscriptionPlans({required this.weekly, required this.yearly});

  factory SubscriptionPlans.fromOfferings(Offerings offerings) {
    final weekly = offerings.current?.weekly;
    final yearly = offerings.current?.annual;

    if (weekly == null || yearly == null) {
      throw 'Packages missing';
    }

    return SubscriptionPlans(
      weekly: SubscriptionPlan(type: SubscriptionPlanType.weekly, package: weekly),
      yearly: SubscriptionPlan(type: SubscriptionPlanType.yearly, package: yearly),
    );
  }

  @override
  String toString() => 'WEEKLY(${weekly.package.storeProduct.priceString}) | YEARLY(${yearly.package.storeProduct.priceString})';

  int get yearlyDiscountPercentVersusWeekly {
    final weeklyPrice = weekly.package.storeProduct.price;
    final yearlyPrice = yearly.package.storeProduct.price;

    if (weeklyPrice <= 0 || yearlyPrice <= 0) return 0;

    final fullYearPrice = weeklyPrice * 52;
    final discount = 1 - (yearlyPrice / fullYearPrice);

    final percent = (discount * 100).clamp(0, 100);
    return percent.round();
  }
}

class SubscriptionPlan {
  final SubscriptionPlanType type;
  final Package package;

  const SubscriptionPlan({required this.type, required this.package});
  
  String get formattedPriceString {
    final product = package.storeProduct;
    final price = product.price;
    final currencyCode = product.currencyCode;

    if (price <= 0 || currencyCode.isEmpty) {
      return product.priceString;
    }

    final format = NumberFormat.simpleCurrency(
      name: currencyCode,
      decimalDigits: price.truncateToDouble() == price ? 0 : 2,
      locale: 'en',
    );

    return format.format(price);
  }
}