import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/resource_boiler.dart';

class AppBarWidget {
  PreferredSizeWidget appBar({
    required Widget title,
    Widget? leading,
    bool hasBackAction = false,
    Widget? subtitle,
    List<Widget>? actions,
    bool centerTitle = false,
    Color? backgroundColor,
    double? elevation,
    double? leadingWidth,
  }) {
    return AppBar(
      elevation: elevation,
      backgroundColor: backgroundColor,
      title: subtitle == null
          ? title
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [title, SizedBox(height: SizeConfig.s02.r), subtitle],
            ),
      centerTitle: centerTitle,
      leading: leading ?? (hasBackAction ? backAction() : null),
      leadingWidth: leadingWidth,
      automaticallyImplyLeading: false,
      actions: actions,
    );
  }

  Widget appBarTitle({required String title}) {
    return Text(title, style: TextStyleConfig.appBarTitle);
  }

  Widget appBarSubtitle({required String subtitle}) {
    return Text(
      subtitle,
      style: TextStyleConfig.appBarSubtitle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget appBarIconAction({
    required IconData icon,
    required VoidCallback action,
    Color? color,
    double? size,
    String? tooltip,
    double? splashRadius,
  }) {
    return IconButton(
      splashRadius: splashRadius ?? SizeConfig.s24.r,
      tooltip: tooltip,
      icon: Icon(icon, size: size ?? SizeConfig.s24.r, color: color),
      onPressed: () => action(),
    );
  }

  Widget backAction({Color? color, VoidCallback? action}) {
    return appBarIconAction(
      icon: Icons.arrow_back,
      action: () => action == null ? Get.back() : action(),
      size: SizeConfig.s20.r,
      color: color,
    );
  }

  Widget categoryBackward({required VoidCallback action}) {
    return appBarIconAction(
      icon: Icons.keyboard_arrow_left,
      action: action,
      size: SizeConfig.s22.r,
    );
  }
}
