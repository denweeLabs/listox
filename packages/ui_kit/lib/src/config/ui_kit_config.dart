import 'package:ui_kit/src/config/ui_kit_theme_colors.dart';
import 'package:ui_kit/src/theme/theme_coloration.dart';

class UiKitConfig {
  static String latinFontFamily = 'Quicksand';
  static String cyrillicFontFamily = 'Quicksand';
  static const Set<String> cyrillicLocaleCodes = {
    'ru',
    'uk',
    'bg',
    'sr',
    'mk',
    'kk',
    'ky',
    'tg',
    'be',
    'mn',
    'uz',
  };
  static String _currentLocaleCode = 'en';
  
  static void setCurrentLocale(String languageCode) =>
      _currentLocaleCode = languageCode;

  static String get currentFontFamily =>
      cyrillicLocaleCodes.contains(_currentLocaleCode)
      ? cyrillicFontFamily
      : latinFontFamily;

  static UiKitThemeColors? lightColors;
  static UiKitThemeColors? darkColors;
  static List<ThemeColoration> themeColorations = [];

  static void configure({
    String latinFontFamily = 'Quicksand',
    String cyrillicFontFamily = 'Quicksand',
    UiKitThemeColors? lightColors,
    UiKitThemeColors? darkColors,
    List<ThemeColoration> themeColorations = const [],
  }) {
    UiKitConfig.latinFontFamily = latinFontFamily;
    UiKitConfig.cyrillicFontFamily = cyrillicFontFamily;
    UiKitConfig.lightColors = lightColors;
    UiKitConfig.darkColors = darkColors;
    UiKitConfig.themeColorations = themeColorations;
  }
}
