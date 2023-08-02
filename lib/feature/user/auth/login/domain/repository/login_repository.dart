import 'package:dartz/dartz.dart';
import 'package:store/core/network/network_exception.dart';
import 'package:store/feature/user/auth/login/data/model/login_request_model.dart';
import 'package:store/feature/user/auth/login/data/model/login_response_model.dart';

abstract class LoginRepository {
  Future<Either<NetworkException, LoginResponseModel>> login(
      {required LoginRequestModel loginRequestModel});
}
