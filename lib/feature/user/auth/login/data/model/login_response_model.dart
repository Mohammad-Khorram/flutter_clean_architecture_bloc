import 'package:store/config/boiler/entity_boiler.dart';

class LoginResponseModel extends LoginResponseEntity {
  const LoginResponseModel({String? token}) : super(token: token);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(token: json['token']);
  }
}
