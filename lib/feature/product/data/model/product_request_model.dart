class ProductRequestModel {
  final String sort;
  final String? category;
  final String? utmSource;

  ProductRequestModel({
    required this.sort,
    this.category,
    this.utmSource,
  });

  Map<String, dynamic> toJson() => {'sort': sort};
}
