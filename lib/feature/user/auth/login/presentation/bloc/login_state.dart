part of 'login_cubit.dart';

class LoginState {
  LoginDataStatus loginDataStatus;

  LoginState({required this.loginDataStatus});

  LoginState copyWith({required LoginDataStatus newStatus}) =>
      LoginState(loginDataStatus: newStatus);
}
