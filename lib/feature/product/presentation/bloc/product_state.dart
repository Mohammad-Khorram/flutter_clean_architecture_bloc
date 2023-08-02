part of 'product_cubit.dart';

class ProductState {
  ProductDataStatus productDataStatus;

  ProductState({required this.productDataStatus});

  ProductState copyWith({required ProductDataStatus newStatus}) =>
      ProductState(productDataStatus: newStatus);
}
