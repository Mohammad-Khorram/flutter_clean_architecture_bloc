import 'package:dartz/dartz.dart';
import 'package:store/core/network/network_exception.dart';
import 'package:store/feature/user/profile/data/data_source/remote/profile_remote_data_source.dart';
import 'package:store/feature/user/profile/domain/entity/profile_response_entity.dart';
import 'package:store/feature/user/profile/domain/repository/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileRemoteDataSource profileRemoteDataSource;

  ProfileRepositoryImpl({required this.profileRemoteDataSource});

  @override
  Future<Either<NetworkException, ProfileResponseEntity>> getProfile() =>
      profileRemoteDataSource.getProfile();
}
