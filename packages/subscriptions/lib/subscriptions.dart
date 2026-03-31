library;

/// Package to quickly handle RevenueCat subscriptions in the app.
/// Check how to use ⬇️
///
///
///
/// Create the config:
/// ```dart
/// static final _subscriptionsConfig = SubscriptionConfig(
///   apiKeys: const SubscriptionApiKeys(
///     apple: 'appl_hbwVsLvsZAddCuFRisLRFsWIcVO',
///     google: '', // TBD
///     test: 'test_wnJuVXZzvgQRRSSGkwjCEMGHPUk',
///   ),
///   productIds: const SubscriptionProductIds(
///     weekly: 'denwee_listox_premium_week',
///     yearly: 'denwee_listox_premium_year',
///   ),
///   entitlementId: 'premium',
///   envPrefix: getIt<String>(instanceName: 'ENV_PREFIX'),
///   isDebug: getIt<String>(instanceName: 'ENV') == Env.dev,
///   termsUrl: AppConstants.termsOfUseUrl,
///   privacyUrl: AppConstants.privacyPolicyUrl,
/// );
/// ```
///
///
/// Inject on top of MaterialApp:
/// ```dart
/// SubscriptionScope(
///   config: _subscriptionsConfig,
///   child: MaterialApp(),
/// ),
/// ```
/// 
///  
///
/// Check subscription state in the code:
/// ```dart
///  SubscriptionScope.of(context);
///  SubscriptionScope.of(context).isPremium;
///  SubscriptionScope.of(context).expiry;
/// ```
/// 
/// 
/// Show paywall:
/// ```dart
/// showSubscriptionPaywallBottomSheet();
/// ```
/// 
/// Paywall supported language codes: en, es, fr, de, pt, it, ja, ko, zh, ru, ar, nl, pl, tr, uk, sv, hi, id, vi, th, cs, fi, el, hu, nb, ro.
/// To use specific language, pass `locale` parameter:
/// ```dart
/// showSubscriptionPaywallBottomSheet(context, locale: 'es');
/// ```

export 'src/domain/entity/subscription_config.dart';
export 'src/presentation/paywall/l10n/paywall_localizations.dart';
export 'src/domain/entity/subscription_failure.dart';
export 'src/domain/entity/user_subscription.dart';
export 'src/presentation/bloc/subscription_cubit.dart';
export 'src/presentation/scope/subscription_scope.dart';
export 'src/presentation/paywall/settings/paywall_bullet_point.dart';
export 'src/presentation/paywall/paywall_page.dart';
export 'src/presentation/paywall/settings/paywall_strings.dart';
export 'src/presentation/paywall/settings/paywall_theme.dart';
export 'src/presentation/paywall/paywall_bottom_sheet.dart';