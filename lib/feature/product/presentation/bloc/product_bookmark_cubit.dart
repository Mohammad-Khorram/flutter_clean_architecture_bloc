import 'package:bloc/bloc.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';

part 'product_bookmark_state.dart';

class ProductBookmarkCubit extends Cubit<ProductBookmarkState> {
  ProductBookmarkCubit()
      : super(ProductBookmarkState(
            productBookmarkDataStatus: ProductBookmarkIdeal()));

  Future<void> changeBookmarkState({required bool value}) async {
    emit(state.copyWith(newStatus: ProductBookmarkLoading()));

    Future.delayed(
      DurationConfig.second1,
      () => emit(
          state.copyWith(newStatus: ProductBookmarkSuccess(value: !value))),
    );
  }
}
