import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/usecase_boiler.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryUseCase categoryUseCase;

  CategoryCubit({required this.categoryUseCase})
      : super(CategoryState(categoryDataStatus: CategoryLoading()));

  Future<void> getCategory() async {
    try {
      emit(state.copyWith(newStatus: CategoryLoading()));

      Either<NetworkException, CategoryResponseEntity> response =
          await categoryUseCase.getCategory();

      response.fold(
        (failure) => emit(state.copyWith(newStatus: CategoryFailure(failure))),
        (result) => emit(state.copyWith(newStatus: CategorySuccess(result))),
      );
    } on NetworkException catch (ex) {
      emit(state.copyWith(newStatus: CategoryFailure(ex)));
    }
  }
}
