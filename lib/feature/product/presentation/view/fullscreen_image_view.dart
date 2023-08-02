// ignore_for_file: must_be_immutable
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/feature/product/data/model/fullscreen_image_params_model.dart';

class FullScreenImageView extends StatelessWidget {
  static const String route = '/product/details/image';

  FullScreenImageView({super.key});

  // params
  late FullScreenImageParamsModel paramsModel;

  /// get body parameters
  void _getParams() {
    paramsModel = FullScreenImageParamsModel.fromJson(Get.parameters);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: body());
  }

  PreferredSizeWidget appBar() {
    return AppBarWidget().appBar(
      title: AppBarWidget().appBarTitle(title: ''.tr),
      leading: AppBarWidget().backAction(),
    );
  }

  Widget body() {
    return Builder(builder: (context) {
      _getParams();

      return GestureDetector(
        onTap: () => Get.back(),
        child: Hero(
          tag: 'heroImage',
          child: CachedNetworkImage(
            imageUrl: paramsModel.src,
            width: Get.width,
            height: Get.height,
            fit: BoxFit.contain,
          ),
        ),
      );
    });
  }
}
