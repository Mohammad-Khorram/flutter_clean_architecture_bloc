import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/usecase_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'product_data_status.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductUseCase productUseCase;

  ProductCubit({required this.productUseCase})
      : super(ProductState(productDataStatus: ProductLoading()));

  Future<void> getProduct({
    required BuildContext context,
    required ProductRequestModel productRequestModel,
  }) async {
    try {
      emit(state.copyWith(newStatus: ProductLoading()));

      if (!await hasConnection(context)) {
        emit(state.copyWith(newStatus: ProductConnectionError()));
        return;
      }

      Either<NetworkException, ProductListEntity> response =
          await productUseCase.getProduct(
              productRequestModel: productRequestModel);

      response.fold(
        (failure) => emit(state.copyWith(newStatus: ProductFailure(failure))),
        (result) => emit(state.copyWith(newStatus: ProductListSuccess(result))),
      );
    } on NetworkException catch (ex) {
      emit(state.copyWith(newStatus: ProductFailure(ex)));
    }
  }

  Future<void> getProductWithCategory({
    required BuildContext context,
    required ProductRequestModel productRequestModel,
  }) async {
    try {
      emit(state.copyWith(newStatus: ProductLoading()));

      if (!await hasConnection(context)) {
        emit(state.copyWith(newStatus: ProductConnectionError()));
        return;
      }

      Either<NetworkException, ProductListEntity> response =
          await productUseCase.getProductWithCategory(
              productRequestModel: productRequestModel);

      response.fold(
        (failure) => emit(state.copyWith(newStatus: ProductFailure(failure))),
        (result) => emit(state.copyWith(newStatus: ProductListSuccess(result))),
      );
    } on NetworkException catch (ex) {
      emit(state.copyWith(newStatus: ProductFailure(ex)));
    }
  }

  Future<void> getProductDetails({
    required BuildContext context,
    required ProductDetailsParamsModel productDetailsParamsModel,
  }) async {
    try {
      emit(state.copyWith(newStatus: ProductLoading()));

      if (!await hasConnection(context)) {
        emit(state.copyWith(newStatus: ProductConnectionError()));
        return;
      }

      Either<NetworkException, ProductResponseEntity> response =
          await productUseCase.getProductDetails(
              productDetailsParamsModel: productDetailsParamsModel);

      response.fold(
        (failure) => emit(state.copyWith(newStatus: ProductFailure(failure))),
        (result) =>
            emit(state.copyWith(newStatus: ProductDetailsSuccess(result))),
      );
    } on NetworkException catch (ex) {
      emit(state.copyWith(newStatus: ProductFailure(ex)));
    }
  }

  /// handle internet connection status
  Future<bool> hasConnection(BuildContext context) async {
    return await InjectionCore.instance<ConnectionCore>()
        .hasConnection(context, showSnackBar: false);
  }
}
