import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';

abstract class ProductRemoteDataSource {
  Future<Either<NetworkException, ProductListEntity>> getProduct(
      {required ProductRequestModel productRequestModel});

  Future<Either<NetworkException, ProductListEntity>> getProductWithCategory(
      {required ProductRequestModel productRequestModel});

  Future<Either<NetworkException, ProductResponseEntity>> getProductDetails(
      {required ProductDetailsParamsModel productDetailsParamsModel});
}

class ProductRemoteDataSourceImpl extends ProductRemoteDataSource {
  DioCore dioCore = InjectionCore.instance<DioCore>();

  @override
  Future<Either<NetworkException, ProductListEntity>> getProduct(
      {required ProductRequestModel productRequestModel}) async {
    try {
      Response<dynamic> response = await dioCore.get(
          path: PathCore.product,
          queryParameters: productRequestModel.toJson());

      if (response.statusCode == 200) {
        return Right(
            ProductListModel.fromJson({'productItemList': response.data}));
      }

      return Left(NetworkException.handleResponse(response));
    } on DioException catch (ex) {
      return Left(NetworkException.handleResponse(ex.response!));
    } catch (ex) {
      return Left(NetworkException.parsingDataException());
    }
  }

  @override
  Future<Either<NetworkException, ProductListEntity>> getProductWithCategory(
      {required ProductRequestModel productRequestModel}) async {
    try {
      Response<dynamic> response = await dioCore.get(
          path:
              '${PathCore.productWithCategory}/${productRequestModel.category!}',
          queryParameters: productRequestModel.toJson());

      if (response.statusCode == 200) {
        return Right(
            ProductListModel.fromJson({'productItemList': response.data}));
      }

      return Left(NetworkException.handleResponse(response));
    } on DioException catch (ex) {
      return Left(NetworkException.handleResponse(ex.response!));
    } catch (ex) {
      return Left(NetworkException.parsingDataException());
    }
  }

  @override
  Future<Either<NetworkException, ProductResponseEntity>> getProductDetails(
      {required ProductDetailsParamsModel productDetailsParamsModel}) async {
    try {
      Response<dynamic> response = await dioCore.get(
          path:
              '${PathCore.productDetails}/${productDetailsParamsModel.prodId}');

      if (response.statusCode == 200) {
        return Right(ProductResponseModel.fromJson(response.data));
      }

      return Left(NetworkException.handleResponse(response));
    } on DioException catch (ex) {
      return Left(NetworkException.handleResponse(ex.response!));
    } catch (ex) {
      return Left(NetworkException.parsingDataException());
    }
  }
}
