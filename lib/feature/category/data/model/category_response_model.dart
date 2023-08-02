import 'package:store/config/boiler/entity_boiler.dart';

class CategoryResponseModel extends CategoryResponseEntity {
  const CategoryResponseModel({List<String>? categories})
      : super(categories: categories);

  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      CategoryResponseModel(
          categories: List<String>.from(json['categories'].map((x) => x)));
}
