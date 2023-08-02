import 'package:bloc/bloc.dart';

class ProductSortCubit extends Cubit<String> {
  ProductSortCubit() : super('asc');

  void changeSort(String value) => emit(value);
}
