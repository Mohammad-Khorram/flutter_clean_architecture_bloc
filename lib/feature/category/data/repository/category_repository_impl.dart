import 'package:dartz/dartz.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/remote_data_source_boiler.dart';
import 'package:store/config/boiler/repository_boiler.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final CategoryRemoteDataSource categoryRemoteDataSource;

  CategoryRepositoryImpl({required this.categoryRemoteDataSource});

  @override
  Future<Either<NetworkException, CategoryResponseEntity>>
      getCategory() async => categoryRemoteDataSource.getCategory();
}
