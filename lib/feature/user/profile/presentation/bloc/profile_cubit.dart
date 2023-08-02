import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/usecase_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileUseCase profileUseCase;

  ProfileCubit({required this.profileUseCase})
      : super(ProfileState(profileDataStatus: ProfileLoading()));

  Future<void> getProfile(BuildContext context) async {
    try {
      emit(state.copyWith(newStatus: ProfileLoading()));

      if (!await hasConnection(context)) {
        emit(state.copyWith(newStatus: ProfileConnectionError()));
        return;
      }

      Either<NetworkException, ProfileResponseEntity> response =
          await profileUseCase.getProfile();

      response.fold(
        (failure) => emit(state.copyWith(newStatus: ProfileFailure(failure))),
        (result) => emit(state.copyWith(newStatus: ProfileSuccess(result))),
      );
    } on NetworkException catch (ex) {
      emit(state.copyWith(newStatus: ProfileFailure(ex)));
    }
  }

  Future<void> setLoadingToSignOut(
      {required ProfileDataStatus profileDataStatus}) async {
    emit(state.copyWith(newStatus: profileDataStatus));
  }

  /// handle internet connection status
  Future<bool> hasConnection(BuildContext context) async {
    return await InjectionCore.instance<ConnectionCore>()
        .hasConnection(context, showSnackBar: false);
  }
}
