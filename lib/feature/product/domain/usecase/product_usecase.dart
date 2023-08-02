import 'package:dartz/dartz.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/repository_boiler.dart';

class ProductUseCase {
  ProductRepository productRepository;

  ProductUseCase({required this.productRepository});

  Future<Either<NetworkException, ProductListEntity>> getProduct(
          {required ProductRequestModel productRequestModel}) =>
      productRepository.getProduct(productRequestModel: productRequestModel);

  Future<Either<NetworkException, ProductListEntity>> getProductWithCategory(
          {required ProductRequestModel productRequestModel}) =>
      productRepository.getProductWithCategory(
          productRequestModel: productRequestModel);

  Future<Either<NetworkException, ProductResponseEntity>> getProductDetails(
          {required ProductDetailsParamsModel productDetailsParamsModel}) =>
      productRepository.getProductDetails(
          productDetailsParamsModel: productDetailsParamsModel);
}
