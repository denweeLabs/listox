import 'package:shared_preferences/shared_preferences.dart';

class CoreAppStorage {
  final SharedPreferences _prefs;
  final String _prefix;

  CoreAppStorage._(this._prefs, this._prefix);

  static Future<CoreAppStorage> init({String? envPrefix}) async {
    final prefs = await SharedPreferences.getInstance();
    return CoreAppStorage._(prefs, envPrefix ?? '');
  }

  /// Reads the onboarding flag without instantiating a full [CoreAppStorage].
  /// Safe to call before the widget tree exists (e.g. in `main` / `entry.dart`).
  static Future<bool> readIsOnboarding({String? envPrefix}) async {
    final prefs = await SharedPreferences.getInstance();
    final key = '${envPrefix ?? ''}CORE_IS_ONBOARDING';
    return prefs.getBool(key) ?? true;
  }

  String get _launchKey => '${_prefix}CORE_APP_LAUNCH_COUNTER';
  String get _freemiumKey => '${_prefix}CORE_FREEMIUM_ENTER_COUNTER';
  String get _onboardingKey => '${_prefix}CORE_IS_ONBOARDING';

  bool get isOnboarding => _prefs.getBool(_onboardingKey) ?? true;
  Future<void> setOnboarding(bool value) => _prefs.setBool(_onboardingKey, value);

  int get launchCount => _prefs.getInt(_launchKey) ?? 0;
  Future<int> increaseLaunchCount() async {
    final next = launchCount + 1;
    await _prefs.setInt(_launchKey, next);
    return next;
  }

  int get freemiumCount => _prefs.getInt(_freemiumKey) ?? 0;
  Future<int> increaseFreemiumCount() async {
    final next = freemiumCount + 1;
    await _prefs.setInt(_freemiumKey, next);
    return next;
  }

  Future<void> resetFreemiumCount() => _prefs.setInt(_freemiumKey, 0);
}
