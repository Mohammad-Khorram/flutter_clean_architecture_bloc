import 'package:dartz/dartz.dart';
import 'package:store/core/network/network_exception.dart';
import 'package:store/feature/user/profile/domain/entity/profile_response_entity.dart';

abstract class ProfileRepository {
  Future<Either<NetworkException, ProfileResponseEntity>> getProfile();
}
