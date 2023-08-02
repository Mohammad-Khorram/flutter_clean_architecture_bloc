// ignore_for_file: must_be_immutable

part of 'category_cubit.dart';

class CategoryState extends Equatable {
  CategoryDataStatus categoryDataStatus;

  CategoryState({required this.categoryDataStatus});

  CategoryState copyWith({required CategoryDataStatus newStatus}) =>
      CategoryState(categoryDataStatus: newStatus);

  CategoryDataStatus currentState() => categoryDataStatus;

  @override
  List<Object?> get props => [categoryDataStatus];
}
