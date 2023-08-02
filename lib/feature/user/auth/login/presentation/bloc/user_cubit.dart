import 'package:bloc/bloc.dart';

class UserCubit extends Cubit<bool> {
  UserCubit() : super(false);

  void login(bool value) => emit(value);
}
