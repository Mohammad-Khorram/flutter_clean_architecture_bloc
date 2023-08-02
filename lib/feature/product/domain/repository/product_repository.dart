import 'package:dartz/dartz.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';

abstract class ProductRepository {
  Future<Either<NetworkException, ProductListEntity>> getProduct(
      {required ProductRequestModel productRequestModel});

  Future<Either<NetworkException, ProductListEntity>>
      getProductWithCategory(
          {required ProductRequestModel productRequestModel});

  Future<Either<NetworkException, ProductResponseEntity>> getProductDetails(
      {required ProductDetailsParamsModel productDetailsParamsModel});
}
