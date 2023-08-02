class FullScreenImageParamsModel {
  final String src;

  FullScreenImageParamsModel({required this.src});

  factory FullScreenImageParamsModel.fromJson(Map<String, dynamic> json) {
    return FullScreenImageParamsModel(src: json['src']);
  }

  Map<String, String> toJson() => {'src': src};
}
