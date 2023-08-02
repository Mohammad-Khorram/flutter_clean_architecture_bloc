import 'package:dartz/dartz.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/repository_boiler.dart';

class CategoryUseCase {
  CategoryRepository categoryRepository;

  CategoryUseCase({required this.categoryRepository});

  Future<Either<NetworkException, CategoryResponseEntity>> getCategory() =>
      categoryRepository.getCategory();
}
