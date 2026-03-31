import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalSecureStorage {
  final FlutterSecureStorage _secureStorage;

  const LocalSecureStorage._(this._secureStorage);

  static LocalSecureStorage getInstance() {
    const aOptions = AndroidOptions(encryptedSharedPreferences: true);
    final storage = FlutterSecureStorage(aOptions: aOptions);
    return LocalSecureStorage._(storage);
  }

  Future<void> putString({required String key, required String? value}) async {
    return _secureStorage.write(key: key, value: value);
  }

  Future<String?> getString({required String key}) {
    return _secureStorage.read(key: key);
  }

  Future<void> remove({required String key}) async {
    return _secureStorage.delete(key: key);
  }
}
