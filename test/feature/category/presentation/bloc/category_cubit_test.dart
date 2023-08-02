import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/usecase_boiler.dart';
import 'category_cubit_test.mocks.dart';

@GenerateMocks([CategoryUseCase])
void main() {
  MockCategoryUseCase mockCategoryUseCase = MockCategoryUseCase();

  group('CategoryCubit => should return Loading, then Success', () {
    when(mockCategoryUseCase.getCategory()).thenAnswer(
        (_) async => Future.value(const Right(CategoryResponseEntity())));

    blocTest<CategoryCubit, CategoryState>(
      'emit Loading then, Success',
      build: () => CategoryCubit(categoryUseCase: mockCategoryUseCase),
      act: (cubit) => cubit.getCategory(),
      expect: () => <CategoryState>[
        CategoryState(categoryDataStatus: CategoryLoading()),
        CategoryState(
            categoryDataStatus:
                CategorySuccess(const CategoryResponseEntity())),
      ],
    );
  });
}
