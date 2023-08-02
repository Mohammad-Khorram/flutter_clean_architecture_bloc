import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/config/routing/route.dart';
import 'package:store/feature/category/presentation/widget/category_item.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryCubit(categoryUseCase: injectionInstance()),
      child: Builder(builder: (context) {
        _initData(context);
        return Scaffold(body: body());
      }),
    );
  }

  /// get categories from api
  Future<void> _initData(BuildContext context) async {
    BlocProvider.of<CategoryCubit>(context).getCategory();
  }

  /// go to specified product category list
  void _navigateToProdList({required String catId}) {
    ProductParamsModel paramsModel =
        ProductParamsModel(hasAppBar: true, catId: catId);
    Get.toNamed(RouteConfig.productList, parameters: paramsModel.toJson());
  }

  Widget body() {
    return BlocBuilder<CategoryCubit, CategoryState>(
      buildWhen: (previousState, currentState) =>
          previousState.categoryDataStatus != currentState.categoryDataStatus,
      builder: (context, status) {
        switch (status.categoryDataStatus) {
          case CategoryLoading():
            return LoadingWidget().circular();

          case CategorySuccess():
            return categorySuccessBuilder(status.categoryDataStatus);

          case CategoryFailure():
            return categoryFailureBuilder(
              context: context,
              status: status.categoryDataStatus,
            );

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  /// handle UI when has success
  Widget categorySuccessBuilder(CategoryDataStatus status) {
    final CategorySuccess profileSuccess = status as CategorySuccess;
    final CategoryResponseEntity categoryResponseEntity =
        profileSuccess.categoryResponseEntity;

    return ListView.builder(
      itemCount: categoryResponseEntity.categories!.length,
      itemBuilder: (context, index) => DelayedWidget(
        animationDuration: DurationConfig.widgetAnimation,
        child: CategoryItem(
          entity: categoryResponseEntity,
          index: index,
          onTap: () => _navigateToProdList(
              catId: categoryResponseEntity.categories![index]),
        ),
      ),
    );
  }

  /// handle UI when has error
  Widget categoryFailureBuilder({
    required BuildContext context,
    required CategoryDataStatus status,
  }) {
    final CategoryFailure categoryFailure = status as CategoryFailure;

    return ShowErrorCore.exceptionErrorView(
      message: categoryFailure.exception.message,
      onTap: () => _initData(context),
    );
  }
}
