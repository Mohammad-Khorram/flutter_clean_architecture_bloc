import 'package:bloc/bloc.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState(cartDataStatus: CartIdeal()));

  Future<void> addToCart() async {
    emit(state.copyWith(newStatus: CartLoading()));

    Future.delayed(
      DurationConfig.second1,
      () => emit(state.copyWith(newStatus: CartSuccess())),
    );
  }
}
