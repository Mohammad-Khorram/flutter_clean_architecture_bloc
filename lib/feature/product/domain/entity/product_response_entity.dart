import 'package:equatable/equatable.dart';
import 'package:store/config/boiler/model_boiler.dart';

class ProductListEntity extends Equatable {
  final List<ProductResponseEntity>? productItemList;

  const ProductListEntity({this.productItemList});

  @override
  List<Object?> get props => [];
}

class ProductResponseEntity extends Equatable {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final ProductRatingModel? rating;

  const ProductResponseEntity({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  @override
  List<Object?> get props => [];
}
