import 'package:flutter/material.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';

@immutable
abstract class ProductDataStatus {}

class ProductConnectionError extends ProductDataStatus {}

class ProductLoading extends ProductDataStatus {}

class ProductListSuccess extends ProductDataStatus {
  final ProductListEntity productListEntity;
  ProductListSuccess(this.productListEntity);
}

class ProductDetailsSuccess extends ProductDataStatus {
  final ProductResponseEntity productResponseEntity;
  ProductDetailsSuccess(this.productResponseEntity);
}

class ProductFailure extends ProductDataStatus {
  final NetworkException exception;
  ProductFailure(this.exception);
}