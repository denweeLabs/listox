import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalSecureStorage {
  final FlutterSecureStorage _secureStorage;

  const LocalSecureStorage._(this._secureStorage);

  static LocalSecureStorage getInstance() {
    const aOptions = AndroidOptions(encryptedSharedPreferences: true);
    // synchronizable: true stores the value in iCloud Keychain, which
    // persists across app reinstalls on iOS as long as the user's iCloud
    // account remains the same — prevents free-scan abuse via reinstall.
    const iOptions = IOSOptions(synchronizable: true);
    final storage = FlutterSecureStorage(aOptions: aOptions, iOptions: iOptions);
    return LocalSecureStorage._(storage);
  }

  Future<void> putString({required String key, required String? value}) async {
    return _secureStorage.write(key: key, value: value);
  }

  Future<String?> getString({required String key}) {
    return _secureStorage.read(key: key);
  }

  Future<void> putInt({required String key, required int value}) async {
    return _secureStorage.write(key: key, value: value.toString());
  }

  Future<int?> getInt({required String key}) async {
    final value = await _secureStorage.read(key: key);
    return value != null ? int.tryParse(value) : null;
  }

  Future<void> remove({required String key}) async {
    return _secureStorage.delete(key: key);
  }
}
