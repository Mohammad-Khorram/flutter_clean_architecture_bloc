import 'package:dartz/dartz.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/remote_data_source_boiler.dart';
import 'package:store/config/boiler/repository_boiler.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepositoryImpl({required this.productRemoteDataSource});

  @override
  Future<Either<NetworkException, ProductListEntity>> getProduct(
          {required ProductRequestModel productRequestModel}) =>
      productRemoteDataSource.getProduct(
          productRequestModel: productRequestModel);

  @override
  Future<Either<NetworkException, ProductListEntity>> getProductWithCategory(
          {required ProductRequestModel productRequestModel}) =>
      productRemoteDataSource.getProductWithCategory(
          productRequestModel: productRequestModel);

  @override
  Future<Either<NetworkException, ProductResponseEntity>> getProductDetails(
          {required ProductDetailsParamsModel productDetailsParamsModel}) =>
      productRemoteDataSource.getProductDetails(
          productDetailsParamsModel: productDetailsParamsModel);
}
