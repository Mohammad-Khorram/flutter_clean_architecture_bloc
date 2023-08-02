import 'package:dartz/dartz.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/repository_boiler.dart';

class LoginUseCase {
  LoginRepository loginRepository;

  LoginUseCase({required this.loginRepository});

  Future<Either<NetworkException, LoginResponseEntity>> login(
          {required LoginRequestModel loginRequestModel}) =>
      loginRepository.login(loginRequestModel: loginRequestModel);
}
