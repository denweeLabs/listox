import 'package:intl/intl.dart';
import 'package:purchases_flutter/models/offerings_wrapper.dart';
import 'package:purchases_flutter/models/package_wrapper.dart';
import 'package:subscriptions/subscriptions.dart';

enum SubscriptionPlanType {
  weekly,
  monthly,
  yearly,
  lifetime;

  static SubscriptionPlanType fromProductId(
    String id,
    SubscriptionProductIds ids,
  ) {
    if (ids.weekly.isNotEmpty && id == ids.weekly) {
      return SubscriptionPlanType.weekly;
    }
    if (ids.monthly.isNotEmpty && id == ids.monthly) {
      return SubscriptionPlanType.monthly;
    }
    if (ids.yearly.isNotEmpty && id == ids.yearly) {
      return SubscriptionPlanType.yearly;
    }
    if (ids.lifetime.isNotEmpty && id == ids.lifetime) {
      return SubscriptionPlanType.lifetime;
    }
    throw UnsupportedError('Plan type not supported for product id: $id');
  }
}

extension SubscriptionPlanTypeX on SubscriptionPlanType {
  String productId(SubscriptionProductIds ids) {
    switch (this) {
      case SubscriptionPlanType.weekly:
        return ids.weekly;
      case SubscriptionPlanType.monthly:
        return ids.monthly;
      case SubscriptionPlanType.yearly:
        return ids.yearly;
      case SubscriptionPlanType.lifetime:
        return ids.lifetime;
    }
  }
}

class SubscriptionPlans {
  final SubscriptionPlan? weekly;
  final SubscriptionPlan? monthly;
  final SubscriptionPlan? yearly;
  final SubscriptionPlan? lifetime;

  const SubscriptionPlans({
    this.weekly,
    this.monthly,
    this.yearly,
    this.lifetime,
  }) : assert(
         yearly != null || lifetime != null,
         'Either yearly or lifetime must be provided',
       ),
       assert(
         weekly != null || monthly != null,
         'Either weekly or monthly must be provided',
       );

  /// The short-cycle plan (weekly or monthly).
  SubscriptionPlan get shortPlan => weekly ?? monthly!;

  /// The long-cycle plan (yearly or lifetime).
  SubscriptionPlan get longPlan => lifetime ?? yearly!;

  factory SubscriptionPlans.fromOfferings(
    Offerings offerings,
    SubscriptionVariant variant,
  ) {
    final current = offerings.current;

    SubscriptionPlan weekly() {
      final pkg = current?.weekly ?? (throw 'Weekly package missing');
      return SubscriptionPlan(type: SubscriptionPlanType.weekly, package: pkg);
    }

    SubscriptionPlan monthly() {
      final pkg = current?.monthly ?? (throw 'Monthly package missing');
      return SubscriptionPlan(type: SubscriptionPlanType.monthly, package: pkg);
    }

    SubscriptionPlan yearly() {
      final pkg = current?.annual ?? (throw 'Yearly package missing');
      return SubscriptionPlan(type: SubscriptionPlanType.yearly, package: pkg);
    }

    SubscriptionPlan lifetime() {
      final pkg = current?.lifetime ?? (throw 'Lifetime package missing');
      return SubscriptionPlan(type: SubscriptionPlanType.lifetime, package: pkg);
    }

    final shortPlan = variant.hasWeekly ? weekly() : monthly();

    if (variant.hasLifetime) {
      return SubscriptionPlans(
        weekly: variant.hasWeekly ? shortPlan : null,
        monthly: variant.hasWeekly ? null : shortPlan,
        lifetime: lifetime(),
      );
    } else {
      return SubscriptionPlans(
        weekly: variant.hasWeekly ? shortPlan : null,
        monthly: variant.hasWeekly ? null : shortPlan,
        yearly: yearly(),
      );
    }
  }

  @override
  String toString() =>
      'SHORT(${shortPlan.package.storeProduct.priceString}) | LONG(${longPlan.package.storeProduct.priceString})';

  /// Only meaningful for yearly variants — returns 0 for lifetime variants.
  int get yearlyDiscountPercent {
    if (yearly == null) return 0;

    final short = shortPlan;
    final shortPrice = short.package.storeProduct.price;
    final yearlyPrice = yearly!.package.storeProduct.price;

    if (shortPrice <= 0 || yearlyPrice <= 0) return 0;

    final multiplier =
        short.type == SubscriptionPlanType.weekly ? 52 : 12;
    final fullYearPrice = shortPrice * multiplier;
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
