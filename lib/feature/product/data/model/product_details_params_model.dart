class ProductDetailsParamsModel {
  final String prodId;

  ProductDetailsParamsModel({required this.prodId});

  factory ProductDetailsParamsModel.fromJson(Map<String, dynamic> json) {
    return ProductDetailsParamsModel(prodId: json['id']);
  }

  Map<String, String> toJson() => {'id': prodId};
}
