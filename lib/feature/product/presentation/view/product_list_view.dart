// ignore_for_file: use_build_context_synchronously

import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/config/routing/route.dart';
import 'package:store/feature/product/presentation/widget/product_item.dart';

class ProductListView extends StatefulWidget {
  static const String route = '/product';

  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  // models
  List<ProductSortItemModel> productSortItemList = [];
  late ProductRequestModel productRequestModel;

  // params
  late ProductParamsModel paramsModel;

  @override
  void initState() {
    super.initState();
    _initSortItemsData();
    _getParams();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      _initData(context);
      return Scaffold(appBar: appBar(), body: body());
    });
  }

  /// create sort items data as local
  void _initSortItemsData() {
    productSortItemList.addAll([
      ProductSortItemModel(title: 'productSortAscending'.tr, value: 'asc'),
      ProductSortItemModel(title: 'productSortDescending'.tr, value: 'desc'),
    ]);
  }

  /// get body parameters
  void _getParams() {
    paramsModel = Get.parameters.isEmpty
        ? ProductParamsModel()
        : ProductParamsModel.fromJson(Get.parameters);
  }

  /// get products from api with default sort value as ascending
  Future<void> _initData(BuildContext context) async {
    productRequestModel =
        ProductRequestModel(sort: 'asc', category: paramsModel.catId);

    /// check categoryId is null or have data to handle which api need to call
    paramsModel.catId == null
        ? BlocProvider.of<ProductCubit>(context).getProduct(
            context: context, productRequestModel: productRequestModel)
        : BlocProvider.of<ProductCubit>(context).getProductWithCategory(
            context: context, productRequestModel: productRequestModel);
  }

  /// show sort items as bottom sheet
  void _sortBottomSheet() {
    BottomSheetWidget().bottomSheet(
      context: context,
      title: 'productSortTitle'.tr,
      content: ListView.builder(
        itemCount: productSortItemList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return BlocBuilder<ProductSortCubit, String>(
            builder: (context, sortValue) {
              return BottomSheetWidget().itemView(
                content: BottomSheetWidget().contentView(
                  content: productSortItemList[index].title,
                  style: sortValue == productSortItemList[index].value
                      ? TextStyleConfig.bottomSheetContentBoldStyle
                      : TextStyleConfig.bottomSheetContentStyle,
                ),
                onTap: () => _sortAction(
                  context: context,
                  sortValue: sortValue,
                  modelValue: productSortItemList[index].value,
                ),
                icon: sortValue == productSortItemList[index].value
                    ? Ionicons.checkmark_circle
                    : null,
              );
            },
          );
        },
      ),
    );
  }

  /// for first set sort value and then call product list again with new sort value
  void _sortAction({
    required BuildContext context,
    required String sortValue,
    required String modelValue,
  }) async {
    Get.back();

    if (!await hasConnection(context)) {
      return;
    }

    /// to prevent to click on selected sort
    if (sortValue == modelValue) {
      return;
    }

    BlocProvider.of<ProductSortCubit>(context).changeSort(modelValue);

    productRequestModel =
        ProductRequestModel(sort: modelValue, category: paramsModel.catId);

    /// check categoryId is null or have data to handle which api need to call
    paramsModel.catId == null
        ? BlocProvider.of<ProductCubit>(context).getProduct(
            context: context, productRequestModel: productRequestModel)
        : BlocProvider.of<ProductCubit>(context).getProductWithCategory(
            context: context, productRequestModel: productRequestModel);
  }

  /// go to specified product details
  void _navigateToProdDetails({required String prodId}) {
    ProductDetailsParamsModel paramsModel =
        ProductDetailsParamsModel(prodId: prodId);
    Get.toNamed(RouteConfig.productDetails, parameters: paramsModel.toJson());
  }

  /// app_bar only show when categoryId has been selected as filter
  PreferredSizeWidget? appBar() {
    return paramsModel.catId == null
        ? null
        : AppBarWidget().appBar(
            title: AppBarWidget().appBarTitle(title: paramsModel.catId!),
            leading: AppBarWidget().backAction(),
            actions: [
              BlocBuilder<ProductCubit, ProductState>(
                builder: (context, status) {
                  switch (status.productDataStatus) {
                    case ProductLoading():
                    case ProductFailure():
                      return const SizedBox.shrink();

                    case ProductListSuccess():
                      return DelayedWidget(
                        animationDuration: DurationConfig.widgetAnimation,
                        child: AppBarWidget().appBarIconAction(
                          icon: Ionicons.filter_outline,
                          action: _sortBottomSheet,
                          size: SizeConfig.s20.r,
                        ),
                      );

                    default:
                      return const SizedBox.shrink();
                  }
                },
              ),
              SizedBox(width: SizeConfig.s06.r),
            ],
          );
  }

  Widget body() {
    return BlocBuilder<ProductCubit, ProductState>(
      buildWhen: (previousState, currentState) =>
          previousState.productDataStatus != currentState.productDataStatus,
      builder: (context, status) {
        switch (status.productDataStatus) {
          case ProductConnectionError():
            return ShowErrorCore.connectionErrorView(
                onTap: () => _initData(context));

          case ProductLoading():
            return LoadingWidget().circular();

          case ProductListSuccess():
            return productListSuccessBuilder(status.productDataStatus);

          case ProductFailure():
            return productListErrorBuilder(
              context: context,
              status: status.productDataStatus,
            );

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  /// handle UI when has success
  Widget productListSuccessBuilder(ProductDataStatus status) {
    final ProductListSuccess productListSuccess = status as ProductListSuccess;
    final ProductListEntity productListEntity =
        productListSuccess.productListEntity;

    return ListView.builder(
      itemCount: productListEntity.productItemList!.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => DelayedWidget(
        animationDuration: DurationConfig.widgetAnimation,
        child: ProductItem(
          entity: productListEntity.productItemList![index],
          onTap: () => _navigateToProdDetails(
              prodId: productListEntity.productItemList![index].id!.toString()),
        ),
      ),
    );
  }

  /// handle UI when has error
  Widget productListErrorBuilder({
    required BuildContext context,
    required ProductDataStatus status,
  }) {
    final ProductFailure productFailure = status as ProductFailure;

    return ShowErrorCore.exceptionErrorView(
      message: productFailure.exception.message,
      onTap: () => _initData(context),
    );
  }

  /// handle internet connection status
  Future<bool> hasConnection(BuildContext context) async {
    return await InjectionCore.instance<ConnectionCore>()
        .hasConnection(context);
  }
}
