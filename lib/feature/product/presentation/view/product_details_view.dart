// ignore_for_file: must_be_immutable, use_build_context_synchronously
import 'package:cached_network_image/cached_network_image.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:share_plus/share_plus.dart';
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
import 'package:store/config/constant/constant.dart';
import 'package:store/config/routing/route.dart';
import 'package:store/feature/product/data/model/fullscreen_image_params_model.dart';
import 'package:store/feature/product/presentation/widget/product_details_appbar_action.dart';

class ProductDetailsView extends StatelessWidget {
  static const String route = '/product/details';

  ProductDetailsView({super.key});

  // params
  late final ProductDetailsParamsModel paramsModel;

  // data
  late ProductResponseEntity entity;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => ProductCubit(productUseCase: injectionInstance())),
        BlocProvider(create: (_) => ProductBookmarkCubit()),
        BlocProvider(create: (_) => CartCubit()),
      ],
      child: Builder(builder: (context) {
        _getParams();
        _initData(context);
        return Scaffold(
          body: body(),
          bottomNavigationBar: bottomNavigationBar(),
        );
      }),
    );
  }

  /// get body parameters
  void _getParams() =>
      paramsModel = ProductDetailsParamsModel.fromJson(Get.parameters);

  /// get product details from api
  void _initData(BuildContext context) =>
      BlocProvider.of<ProductCubit>(context).getProductDetails(
          context: context, productDetailsParamsModel: paramsModel);

  void _navigateToFullScreenImage() {
    FullScreenImageParamsModel paramsModel =
        FullScreenImageParamsModel(src: entity.image!);
    Get.toNamed(RouteConfig.fullScreenImage, parameters: paramsModel.toJson());
  }

  /// handle fake addToCart for specified product
  void _addToCart(BuildContext context) async {
    if (!await hasConnection(context)) {
      return;
    }

    BlocProvider.of<CartCubit>(context).addToCart();
  }

  /// share product unique link (deep link) which is used in all platforms
  void _shareLink() => Share.share(
      '${ConstantCore.shareUrl}${ConstantCore.shopShareRoute}${paramsModel.prodId}&utm_source=${ConstantCore.shareLinkUtmSource}');

  /// handle fake mark and un-mark for specified product
  void _changeBookmarkState({
    required BuildContext context,
    required bool value,
  }) =>
      BlocProvider.of<ProductBookmarkCubit>(context)
          .changeBookmarkState(value: value);

  void _cartSuccessListener(BuildContext context) {
    SnackBarWidget.snackBar(
      context: context,
      message: 'productDetailsAddToCartMessage'.tr,
    );
  }

  Widget appBar() {
    return AppBarWidget().appBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: AppBarWidget().appBarTitle(title: ''),
      hasBackAction: true,
      leadingWidth: SizeConfig.s59.r,
      leading: Padding(
        padding: SpacingConfig.s10Horizontal,
        child: ProductDetailsAppBarAction(
          icon: 'direction'.tr == 'ltr'
              ? Ionicons.arrow_back
              : Ionicons.arrow_forward,
          onTap: () => Get.back(),
        ),
      ),
      actions: [
        ProductDetailsAppBarAction(
          icon: Ionicons.share_social,
          onTap: _shareLink,
        ),
        SizedBox(width: SizeConfig.s10.r),
        BlocBuilder<ProductBookmarkCubit, ProductBookmarkState>(
          buildWhen: (previousState, currentState) =>
              previousState.productBookmarkDataStatus !=
              currentState.productBookmarkDataStatus,
          builder: (context, status) {
            switch (status.productBookmarkDataStatus) {
              case ProductBookmarkIdeal():
                return productBookmarkIdealBuilder(
                  context: context,
                  value: true,
                );

              case ProductBookmarkLoading():
                return productBookmarkLoadingBuilder();

              case ProductBookmarkSuccess():
                return productBookmarkSuccessBuilder(
                  context: context,
                  status: status.productBookmarkDataStatus,
                );

              default:
                return productBookmarkIdealBuilder(
                  context: context,
                  value: false,
                );
            }
          },
        ),
        SizedBox(width: SizeConfig.s10.r),
      ],
    );
  }

  /// handle UI when has ideal
  Widget productBookmarkIdealBuilder({
    required BuildContext context,
    required bool value,
  }) {
    return ProductDetailsAppBarAction(
      key: const Key('idealBookmarkIcon'),
      icon: Ionicons.bookmark_outline,
      onTap: () => _changeBookmarkState(context: context, value: value),
    );
  }

  /// handle UI when has loading
  Widget productBookmarkLoadingBuilder() {
    return CircleAvatar(
      backgroundColor: ColorConfig.black.withOpacity(0.3),
      radius: SizeConfig.s20.r,
      child: LoadingWidget().circular(
        size: SizeConfig.s14.r,
        color: ColorConfig.white,
      ),
    );
  }

  /// handle UI when has success
  Widget productBookmarkSuccessBuilder({
    required BuildContext context,
    required ProductBookmarkDataStatus status,
  }) {
    final ProductBookmarkSuccess productBookmarkSuccess =
        status as ProductBookmarkSuccess;
    bool value = productBookmarkSuccess.value;

    return ProductDetailsAppBarAction(
      key: const Key('successBookmarkIcon'),
      icon: value ? Ionicons.bookmark_outline : Ionicons.bookmark,
      onTap: () => _changeBookmarkState(context: context, value: value),
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

          case ProductDetailsSuccess():
            return productDetailsSuccessBuilder(
              context: context,
              status: status.productDataStatus,
            );

          case ProductFailure():
            return productFailureBuilder(
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
  Widget productDetailsSuccessBuilder({
    required BuildContext context,
    required ProductDataStatus status,
  }) {
    final ProductDetailsSuccess productDetailsSuccess =
        status as ProductDetailsSuccess;
    entity = productDetailsSuccess.productResponseEntity;

    return DelayedWidget(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [image(), appBar()]),
            Container(
              transform: Matrix4.translationValues(0, SizeConfig.s20n.r, 0),
              decoration: BoxDecoration(
                borderRadius: RadiusConfig.r28tl28tr,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              padding: SpacingConfig.s20All,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rate(),
                  SizedBox(height: SizeConfig.s20.r),
                  title(),
                  SizedBox(height: SizeConfig.s08.r),
                  description(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// handle UI when has failure
  Widget productFailureBuilder({
    required BuildContext context,
    required ProductDataStatus status,
  }) {
    final ProductFailure productFailure = status as ProductFailure;

    return ShowErrorCore.exceptionErrorView(
      message: productFailure.exception.message,
      onTap: () => _initData(context),
    );
  }

  Widget image() {
    return Hero(
      tag: 'heroImage',
      child: GestureDetector(
        onTap: _navigateToFullScreenImage,
        child: CachedNetworkImage(
          imageUrl: entity.image!,
          width: double.infinity,
          height: SizeConfig.s240.r,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget rate() {
    return Row(
      children: [
        Icon(Ionicons.star, color: ColorConfig.yellow, size: SizeConfig.s12.r),
        SizedBox(width: SizeConfig.s04.r),
        Text(
          '${entity.rating!.rate!}',
          style: TextStyleConfig.productDetailsRate,
        ),
        SizedBox(width: SizeConfig.s02.r),
        Text(
          '(${entity.rating!.count!})',
          style: TextStyleConfig.productDetailsRate,
        ),
      ],
    );
  }

  Widget title() {
    return Text(entity.title!, style: TextStyleConfig.productDetailsTitle);
  }

  Widget description() {
    return Text(
      entity.description!,
      style: TextStyleConfig.productDetailsDescription,
      textAlign: TextAlign.justify,
    );
  }

  Widget bottomNavigationBar() {
    return BlocBuilder<ProductCubit, ProductState>(
      buildWhen: (previousState, currentState) =>
          previousState.productDataStatus != currentState.productDataStatus,
      builder: (context, status) {
        switch (status.productDataStatus) {
          case ProductLoading():
          case ProductFailure():
            return const SizedBox.shrink();

          case ProductDetailsSuccess():
            return bnvProductDetailsSuccessBuilder(
              context: context,
              status: status.productDataStatus,
            );

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  Widget bnvProductDetailsSuccessBuilder({
    required BuildContext context,
    required ProductDataStatus status,
  }) {
    final ProductDetailsSuccess productDetailsSuccess =
        status as ProductDetailsSuccess;
    entity = productDetailsSuccess.productResponseEntity;

    return BlocConsumer<CartCubit, CartState>(
      buildWhen: (previousState, currentState) =>
          previousState.cartDataStatus != currentState.cartDataStatus,
      listenWhen: (previousState, currentState) =>
          previousState.cartDataStatus != currentState.cartDataStatus,
      listener: (context, status) {
        if (status.cartDataStatus is CartSuccess) {
          _cartSuccessListener(context);
        }
      },
      builder: (context, status) {
        return DelayedWidget(
          child: Padding(
            padding: SpacingConfig.s16Vertical,
            child: Row(
              children: [
                price(),
                addToCart(context: context, status: status.cartDataStatus),
                SizedBox(width: Get.width * 0.05),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget price() {
    return SizedBox(
      width: Get.width * 0.33,
      child: Text(
        '\$${IntegerCore().removeZeroAfterDecimal(entity.price!)}',
        style: TextStyleConfig.productDetailsPrice,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget addToCart({
    required BuildContext context,
    required CartDataStatus status,
  }) {
    return SizedBox(
      width: Get.width * 0.62,
      child: ElevatedActionWidget().elevatedAction(
        title: 'productDetailsAddToCart'.tr,
        action: () => _addToCart(context),
        loading: status is CartLoading,
      ),
    );
  }

  /// handle internet connection status
  Future<bool> hasConnection(BuildContext context) async {
    return await InjectionCore.instance<ConnectionCore>()
        .hasConnection(context);
  }
}
