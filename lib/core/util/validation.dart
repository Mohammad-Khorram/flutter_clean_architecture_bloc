import 'package:get/get.dart';

class ValidationCore {
  bool isEmailValid({required String email}) => GetUtils.isEmail(email);
}
