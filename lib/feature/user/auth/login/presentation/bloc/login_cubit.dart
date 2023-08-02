import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/usecase_boiler.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginUseCase loginUseCase;

  LoginCubit({required this.loginUseCase})
      : super(LoginState(loginDataStatus: LoginIdeal()));

  Future<void> login({required LoginRequestModel loginRequestModel}) async {
    try {
      emit(state.copyWith(newStatus: LoginLoading()));

      Either<NetworkException, LoginResponseEntity> response =
          await loginUseCase.login(loginRequestModel: loginRequestModel);

      response.fold(
        (failure) => emit(state.copyWith(newStatus: LoginFailure(failure))),
        (result) => emit(state.copyWith(newStatus: LoginSuccess(result))),
      );
    } on NetworkException catch (ex) {
      emit(state.copyWith(newStatus: LoginFailure(ex)));
    }
  }
}
