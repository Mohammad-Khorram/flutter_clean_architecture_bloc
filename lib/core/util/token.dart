import 'package:store/config/boiler/util_boiler.dart';

class UserCore {
  late SecureStorageCore secureStorageCore;

  UserCore() {
    secureStorageCore = InjectionCore.instance<SecureStorageCore>();
  }

  void saveToken({required String token}) async {
    await secureStorageCore.writeValue(key: 'token', value: token);
  }

  Future<String?> token() async {
    return await secureStorageCore.fetchValue(key: 'token');
  }

  void deleteToken() {
    secureStorageCore.deleteValue(key: 'token');
  }

  Future<bool> isLogin() async {
    return await token() != null;
  }
}
