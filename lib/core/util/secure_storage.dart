import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageCore {
  Future<void> writeValue({required String key, required String value}) =>
      const FlutterSecureStorage().write(
          key: key,
          value: value,
          aOptions: const AndroidOptions(encryptedSharedPreferences: true));

  Future<dynamic> fetchValue({required String key}) =>
      const FlutterSecureStorage().read(
          key: key,
          aOptions: const AndroidOptions(encryptedSharedPreferences: true));

  void deleteValue({required String key}) =>
      const FlutterSecureStorage().delete(
          key: key,
          aOptions: const AndroidOptions(encryptedSharedPreferences: true));
}
