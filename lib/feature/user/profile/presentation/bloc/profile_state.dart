part of 'profile_cubit.dart';

class ProfileState {
  ProfileDataStatus profileDataStatus;

  ProfileState({required this.profileDataStatus});

  ProfileState copyWith({required ProfileDataStatus newStatus}) =>
      ProfileState(profileDataStatus: newStatus);

  ProfileDataStatus currentState() => profileDataStatus;
}
