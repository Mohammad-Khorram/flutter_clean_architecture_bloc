import 'package:bloc/bloc.dart';

class TogglePasswordVisibilityCubit extends Cubit<bool> {
  TogglePasswordVisibilityCubit() : super(false);

  void toggle() => emit(!state);
}
