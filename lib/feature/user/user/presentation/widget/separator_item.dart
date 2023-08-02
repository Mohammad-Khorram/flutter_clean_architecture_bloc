import 'package:flutter/material.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeparatorItem extends StatefulWidget {
  const SeparatorItem({super.key});

  @override
  State<SeparatorItem> createState() => _SeparatorItemState();
}

class _SeparatorItemState extends State<SeparatorItem> {
  @override
  Widget build(BuildContext context) {
    return DividerWidget().horizontalWithTheme(
      thickness: SizeConfig.s09.r,
      darkColor: ColorConfig.color40,
      lightColor: ColorConfig.color237,
    );
  }
}
