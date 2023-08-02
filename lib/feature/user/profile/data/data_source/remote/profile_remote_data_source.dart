import 'package:dio/dio.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/core/network/dio.dart';
import 'package:store/core/network/network_exception.dart';
import 'package:store/core/network/path.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRemoteDataSource {
  Future<Either<NetworkException, ProfileResponseEntity>> getProfile();
}

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  DioCore dioCore = InjectionCore.instance<DioCore>();

  @override
  Future<Either<NetworkException, ProfileResponseEntity>> getProfile() async {
    try {
      Response<dynamic> response =
          await dioCore.get(path: '${PathCore.profile}/2');

      if (response.statusCode == 200) {
        return Right(ProfileResponseModel.fromJson(response.data));
      }

      return Left(NetworkException.handleResponse(response));
    } on DioException catch (ex) {
      return Left(NetworkException.handleResponse(ex.response!));
    } catch (ex) {
      return Left(NetworkException.parsingDataException());
    }
  }
}
