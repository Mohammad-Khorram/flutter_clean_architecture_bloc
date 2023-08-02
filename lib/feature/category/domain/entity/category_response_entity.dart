import 'package:equatable/equatable.dart';

class CategoryResponseEntity extends Equatable {
  final List<String>? categories;

  const CategoryResponseEntity({this.categories});

  @override
  List<Object?> get props => [];
}
