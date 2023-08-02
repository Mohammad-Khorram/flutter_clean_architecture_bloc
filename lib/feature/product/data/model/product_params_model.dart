class ProductParamsModel {
  final bool hasAppBar;
  final String? catId;

  ProductParamsModel({this.hasAppBar = false, this.catId});

  factory ProductParamsModel.fromJson(Map<String, dynamic> json) {
    return ProductParamsModel(
      hasAppBar: bool.parse(json['appbar']),
      catId: json['category'],
    );
  }

  Map<String, String> toJson() => {'appbar': '$hasAppBar', 'category': catId!};
}
