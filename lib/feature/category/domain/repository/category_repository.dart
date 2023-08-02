import 'package:dartz/dartz.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';

abstract class CategoryRepository {
  Future<Either<NetworkException, CategoryResponseEntity>> getCategory();
}
