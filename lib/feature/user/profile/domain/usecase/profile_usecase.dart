import 'package:dartz/dartz.dart';
import 'package:store/config/boiler/repository_boiler.dart';
import 'package:store/core/network/network_exception.dart';
import 'package:store/feature/user/profile/domain/entity/profile_response_entity.dart';

class ProfileUseCase {
  ProfileRepository profileRepository;

  ProfileUseCase({required this.profileRepository});

  Future<Either<NetworkException, ProfileResponseEntity>> getProfile() =>
      profileRepository.getProfile();
}
