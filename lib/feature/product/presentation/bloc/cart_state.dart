part of 'cart_cubit.dart';

class CartState {
  CartDataStatus cartDataStatus;

  CartState({required this.cartDataStatus});

  CartState copyWith({required CartDataStatus newStatus}) =>
      CartState(cartDataStatus: newStatus);
}
