import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/config/enumeration/enumeration.dart';

class ShowErrorCore {
  static void connectionError(BuildContext context) {
    SnackBarWidget.snackBar(
      context: context,
      message: 'connectionError'.tr,
      type: SnackBarIconType.connection,
    );
  }

  static void generalErrorSnackBar({
    required BuildContext context,
    required String message,
    bool showInLog = true,
  }) {
    SnackBarWidget.snackBar(
      context: context,
      message: message,
      type: SnackBarIconType.exception,
    );

    if (showInLog) {
      LogCore.error(message);
    }
  }

  static Widget exceptionErrorView({
    required String message,
    bool? hasAction = true,
    VoidCallback? onTap,
  }) {
    return Container(
      alignment: Alignment.center,
      padding: SpacingConfig.s32All,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageView(image: AssetConfig.generalError),
          SizedBox(height: SizeConfig.s24.r),
          messageView(message: message),
          SizedBox(height: SizeConfig.s40.r),
          if (hasAction != null && hasAction)
            actionView(title: 'errorAction'.tr, onTap: onTap!),
        ],
      ),
    );
  }

  static Widget connectionErrorView({required VoidCallback onTap}) {
    return Container(
      alignment: Alignment.center,
      padding: SpacingConfig.s32All,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageView(image: AssetConfig.connectionError),
          SizedBox(height: SizeConfig.s24.r),
          messageView(message: 'connectionError'.tr),
          SizedBox(height: SizeConfig.s40.r),
          actionView(title: 'errorAction'.tr, onTap: onTap),
        ],
      ),
    );
  }

  static Widget imageView({required String image}) {
    return SvgPicture.asset(
      image,
      width: SizeConfig.s160.r,
      height: SizeConfig.s160.r,
    );
  }

  static Widget messageView({required String message}) {
    return Text(
      message,
      style: TextStyleConfig.errorStyle,
      textAlign: TextAlign.center,
    );
  }

  static Widget actionView({
    required String title,
    required VoidCallback onTap,
  }) {
    return ElevatedActionWidget().elevatedAction(
      title: title,
      action: onTap,
      width: SizeConfig.s172.r,
      height: SizeConfig.s40.r,
    );
  }
}
