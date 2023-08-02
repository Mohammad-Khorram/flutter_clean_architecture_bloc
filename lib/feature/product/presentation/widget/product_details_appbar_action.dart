import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';

class ProductDetailsAppBarAction extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const ProductDetailsAppBarAction({
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(

      backgroundColor: ColorConfig.black.withOpacity(0.3),
      radius: SizeConfig.s20.r,
      child: AppBarWidget().appBarIconAction(
        size: SizeConfig.s20.r,
        icon: icon,
        color: ColorConfig.white,
        action: onTap,
      ),
    );
  }
}
