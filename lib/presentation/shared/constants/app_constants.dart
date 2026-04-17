import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AppConstants {
  /// Default allowed max items
  static const maxItemsSelectionCount = 10;

  /// Item quantity constraints
  static const itemMinQuantity = 1;
  static const itemMaxQuantity = 99;

  /// Dynamic learning rates for consumption period EMA adaptation (0.0–1.0).
  /// Applied based on how many purchases have been recorded for an item:
  ///   First  (count == 0): strong-but-smooth — blends seed with the first real interval.
  ///   Second (count == 1): aggressive        — second purchase strongly overrides the seed.
  ///   Early  (count 2–4):  moderate          — still correcting, but more gently.
  ///   Stable (count >= 5): slow              — fine-tuning an already well-calibrated estimate.
  static const groceriesConsumptionLearningRateFirst = 0.65;
  static const groceriesConsumptionLearningRateSecond = 0.55;
  static const groceriesConsumptionLearningRateEarly = 0.35;
  static const groceriesConsumptionLearningRateStable = 0.15;

  /// Maximum ratio of actual interval to current estimate before capping.
  /// Prevents vacations, bulk buys, or missed logging from distorting the period.
  static const groceriesConsumptionIntervalCapMultiplier = 2.0;

  /// Enable haptic feedback by default
  static const defaultHapticsEnabled = true;

  /// Default notification time
  static final defaultNotificationTime = TimeOfDay(hour: 17, minute: 0);

  /// Min and Max allowed notificaton time
  static const notificationTimeSelectionMinTime = TimeOfDay(hour: 7, minute: 0);
  static const notificationTimeSelectionMaxTime = TimeOfDay(hour: 23, minute: 0);

  /// Start predict auto notifications if at least 'n' purchases has been made
  static const notificationsPredictionMinPurchases = 2;

  /// Request notification permission on every 'n'th app enter
  static const promptNotificationPermissionEachEnter = 2;

  /// Show paywall on every 'n'th app enter without active subscription
  static const promptPaywallEachFreemiumEnter = 5;

  /// Theme mode used by default
  static const defaultThemeMode = ThemeMode.light;

  /// Default theme coloration preset
  static final defaultThemeColorationId = '6';

  /// Available coloration presets for theme customization
  static final themeColorations = <ThemeColoration>[
    ThemeColoration(
      id: '1',
      primary: const Color(0xFF5F4BAE),
      secondary: const Color(0xFF8570D1),
    ),
    ThemeColoration(
      id: '2',
      primary: const Color(0xFFF76276),
      secondary: const Color(0xFFFF8F87),
    ),
    ThemeColoration(
      id: '4',
      primary: const Color(0xFF447CF5),
      secondary: const Color(0xFF83A9F1),
    ),
    ThemeColoration(
      id: '5',
      primary: const Color(0xFFFBA17A),
      secondary: const Color(0xFFFD9697),
    ),
    ThemeColoration(
      id: '6',
      primary: const Color(0xFF08A5CC),
      secondary: const Color(0xFF03CBA6),
    ),
    ThemeColoration(
      id: '7',
      primary: const Color(0xFFF4AAC4),
      secondary: const Color(0xFFEE8AB8),
    ),
    ThemeColoration(
      id: '8',
      primary: const Color(0xFF635CE5),
      secondary: const Color(0xFF667ED2),
    ),
  ];

  /// Supported localizations
  static const supportedLocales = [
    Locale('ar'), // Arabic
    Locale('zh'), // Chinese (Simplified)
    Locale('cs'), // Czech
    Locale('nl'), // Dutch
    Locale('en'), // English
    Locale('fi'), // Finnish
    Locale('fr'), // French
    Locale('de'), // German
    Locale('el'), // Greek
    Locale('hi'), // Hindi
    Locale('hu'), // Hungarian
    Locale('id'), // Indonesian
    Locale('it'), // Italian
    Locale('ja'), // Japanese
    Locale('ko'), // Korean
    Locale('nb'), // Norwegian
    Locale('pl'), // Polish
    Locale('pt'), // Portuguese (Brazil)
    Locale('ro'), // Romanian
    Locale('ru'), // Russian
    Locale('es'), // Spanish
    Locale('sv'), // Swedish
    Locale('th'), // Thai
    Locale('tr'), // Turkish
    Locale('uk'), // Ukrainian
    Locale('vi'), // Vietnamese
  ];

  /// Languages displayed in the "Language" page
  static final languages = <AppLanguage>[
    AppLanguage(locale: Locale('ar'), nativeName: 'العربية', englishName: 'Arabic'),
    AppLanguage(locale: Locale('zh'), nativeName: '简体中文', englishName: 'Chinese (Simplified)'),
    AppLanguage(locale: Locale('cs'), nativeName: 'Čeština', englishName: 'Czech'),
    AppLanguage(locale: Locale('nl'), nativeName: 'Nederlands', englishName: 'Dutch'),
    AppLanguage(locale: Locale('en'), nativeName: 'English', englishName: 'English'),
    AppLanguage(locale: Locale('fi'), nativeName: 'Suomi', englishName: 'Finnish'),
    AppLanguage(locale: Locale('fr'), nativeName: 'Français', englishName: 'French'),
    AppLanguage(locale: Locale('de'), nativeName: 'Deutsch', englishName: 'German'),
    AppLanguage(locale: Locale('el'), nativeName: 'Ελληνικά', englishName: 'Greek'),
    AppLanguage(locale: Locale('hi'), nativeName: 'हिन्दी', englishName: 'Hindi'),
    AppLanguage(locale: Locale('hu'), nativeName: 'Magyar', englishName: 'Hungarian'),
    AppLanguage(locale: Locale('id'), nativeName: 'Bahasa Indonesia', englishName: 'Indonesian'),
    AppLanguage(locale: Locale('it'), nativeName: 'Italiano', englishName: 'Italian'),
    AppLanguage(locale: Locale('ja'), nativeName: '日本語', englishName: 'Japanese'),
    AppLanguage(locale: Locale('ko'), nativeName: '한국어', englishName: 'Korean'),
    AppLanguage(locale: Locale('nb'), nativeName: 'Norsk bokmål', englishName: 'Norwegian'),
    AppLanguage(locale: Locale('pl'), nativeName: 'Polski', englishName: 'Polish'),
    AppLanguage(locale: Locale('pt'), nativeName: 'Português (Brasil)', englishName: 'Portuguese (Brazil)'),
    AppLanguage(locale: Locale('ro'), nativeName: 'Română', englishName: 'Romanian'),
    AppLanguage(locale: Locale('ru'), nativeName: 'Русский', englishName: 'Russian'),
    AppLanguage(locale: Locale('es'), nativeName: 'Español', englishName: 'Spanish'),
    AppLanguage(locale: Locale('sv'), nativeName: 'Svenska', englishName: 'Swedish'),
    AppLanguage(locale: Locale('th'), nativeName: 'ภาษาไทย', englishName: 'Thai'),
    AppLanguage(locale: Locale('tr'), nativeName: 'Türkçe', englishName: 'Turkish'),
    AppLanguage(locale: Locale('uk'), nativeName: 'Українська', englishName: 'Ukrainian'),
    AppLanguage(locale: Locale('vi'), nativeName: 'Tiếng Việt', englishName: 'Vietnamese'),
  ];

  /// Fallback if a locale's translations cannot be loaded
  static const fallbackLocale = Locale('en');

  /// Path to translation assets
  static const localesPath = 'assets/translations';

  /// Open-source repository
  static const aboutAppUrl = 'https://github.com/denweeLabs/listox';

  /// Landing page
  static const landingUrl = 'https://denwee.com/app/listox';

  /// Privacy & Terms
  static const privacyPolicyUrl = 'https://denwee.com/app/listox/privacy';
  static const termsOfUseUrl = 'https://denwee.com/app/listox/terms';

  /// Support contact
  static const supportEmail = 'support@denwee.com';
  static const supportEmailSubject = 'Support Request :)';
}