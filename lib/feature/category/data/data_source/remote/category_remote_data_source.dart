import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';

abstract class CategoryRemoteDataSource {
  Future<Either<NetworkException, CategoryResponseEntity>> getCategory();
}

class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  DioCore dioCore = InjectionCore.instance<DioCore>();

  @override
  Future<Either<NetworkException, CategoryResponseEntity>> getCategory() async {
    try {
      Response<dynamic> response = await dioCore.get(path: PathCore.category);

      if (response.statusCode == 200) {
        return Right(
            CategoryResponseModel.fromJson({'categories': response.data}));
      }

      return Left(NetworkException.handleResponse(response));
    } on DioException catch (ex) {
      return Left(NetworkException.handleResponse(ex.response!));
    } catch (ex) {
      return Left(NetworkException.parsingDataException());
    }
  }
}
