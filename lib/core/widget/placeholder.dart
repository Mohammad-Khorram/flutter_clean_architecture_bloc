import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/resource_boiler.dart';

class PlaceholderWidget {
  Widget product({double? size}) {
    return Image.asset(
      'assets/images/product/placeholder.png',
      width: size ?? SizeConfig.s100.r,
      height: size ?? SizeConfig.s100.r,
      fit: BoxFit.fill,
    );
  }
}
