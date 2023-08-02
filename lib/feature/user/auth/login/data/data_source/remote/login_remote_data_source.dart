import 'package:dio/dio.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/core/network/dio.dart';
import 'package:store/core/network/network_exception.dart';
import 'package:store/core/network/path.dart';
import 'package:dartz/dartz.dart';
import 'package:store/feature/user/auth/login/data/model/login_request_model.dart';
import 'package:store/feature/user/auth/login/data/model/login_response_model.dart';

abstract class LoginRemoteDataSource {
  Future<Either<NetworkException, LoginResponseModel>> login(
      {required LoginRequestModel loginRequestModel});
}

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  DioCore dioCore = InjectionCore.instance<DioCore>();

  @override
  Future<Either<NetworkException, LoginResponseModel>> login(
      {required LoginRequestModel loginRequestModel}) async {
    try {
      Response<dynamic> response = await dioCore.post(
          path: PathCore.login, data: loginRequestModel.toJson());

      if (response.statusCode == 200) {
        return Right(LoginResponseModel.fromJson(response.data));
      }

      return Left(NetworkException.handleResponse(response));
    } on DioException catch (ex) {
      return Left(NetworkException.handleResponse(ex.response!));
    } catch (ex) {
      return Left(NetworkException.parsingDataException());
    }
  }
}
