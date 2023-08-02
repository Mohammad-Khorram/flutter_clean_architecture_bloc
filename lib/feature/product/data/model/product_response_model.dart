import 'package:store/config/boiler/entity_boiler.dart';

class ProductListModel extends ProductListEntity {
  const ProductListModel({List<ProductResponseModel>? productItemList}) : super(productItemList: productItemList);

  factory ProductListModel.fromJson(Map<String, dynamic> json) =>
      ProductListModel(
          productItemList: List<ProductResponseModel>.from(
              json['productItemList']
                  .map((x) => ProductResponseModel.fromJson(x))));
}

class ProductResponseModel extends ProductResponseEntity {
  const ProductResponseModel({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    ProductRatingModel? rating,
  }) : super(
          id: id,
          title: title,
          price: price,
          description: description,
          category: category,
          image: image,
          rating: rating,
        );

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      ProductResponseModel(
        id: json['id'],
        title: json['title'],
        price: json['price']?.toDouble(),
        description: json['description'],
        category: json['category'],
        image: json['image'],
        rating: ProductRatingModel.fromJson(json['rating']),
      );
}

class ProductRatingModel {
  final double? rate;
  final int? count;

  ProductRatingModel({this.rate, this.count});

  factory ProductRatingModel.fromJson(Map<String, dynamic> json) =>
      ProductRatingModel(rate: json['rate']?.toDouble(), count: json['count']);
}
