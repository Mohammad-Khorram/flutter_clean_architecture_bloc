import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';

class ElevatedActionWidget {
  Widget elevatedAction({
    required String title,
    required VoidCallback action,
    double width = double.infinity,
    double? height,
    bool loading = false,
    BorderRadius? radius,
  }) {
    return SizedBox(
      width: width,
      height: height ?? SizeConfig.s48.r,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConfig.accent,
          shape: RoundedRectangleBorder(
              borderRadius: radius ?? RadiusConfig.r32All),
        ),
        onPressed: loading ? null : action,
        child: loading ? loadingView() : titleView(title: title),
      ),
    );
  }

  Widget titleView({required String title}) {
    return Text(title, style: TextStyleConfig.elevatedActionTitle);
  }

  Widget loadingView() {
    return LoadingWidget().circular(
      size: SizeConfig.s16.r,
      color: ColorConfig.white,
    );
  }
}
