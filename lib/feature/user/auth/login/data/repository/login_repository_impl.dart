import 'package:dartz/dartz.dart';
import 'package:store/core/network/network_exception.dart';
import 'package:store/feature/user/auth/login/data/data_source/remote/login_remote_data_source.dart';
import 'package:store/feature/user/auth/login/data/model/login_request_model.dart';
import 'package:store/feature/user/auth/login/data/model/login_response_model.dart';
import 'package:store/feature/user/auth/login/domain/repository/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  final LoginRemoteDataSource loginRemoteDataSource;

  LoginRepositoryImpl({required this.loginRemoteDataSource});

  @override
  Future<Either<NetworkException, LoginResponseModel>> login(
          {required LoginRequestModel loginRequestModel}) =>
      loginRemoteDataSource.login(loginRequestModel: loginRequestModel);
}
