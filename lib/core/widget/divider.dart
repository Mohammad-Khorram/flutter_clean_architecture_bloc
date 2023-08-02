import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';

class DividerWidget {
  Widget horizontalWithTheme({
    double? thickness,
    Color? darkColor,
    Color? lightColor,
  }) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, mode) {
        return DividerWidget().horizontal(
          space: SizeConfig.zero,
          thickness: thickness ?? SizeConfig.s0_5.r,
          color: ThemeColorHandler().colorHandler(
            mode: mode,
            dark: darkColor ?? ColorConfig.color63,
            light: lightColor ?? ColorConfig.color225,
          ),
        );
      },
    );
  }

  Widget horizontal({
    bool matchParent = true,
    double? width,
    double? thickness,
    double? space,
    Color? color,
  }) {
    return matchParent
        ? Divider(
            color: color ?? ColorConfig.divider,
            thickness: thickness ?? SizeConfig.s01.r,
            height: space ?? SizeConfig.s08.r,
          )
        : SizedBox(
            width: width ?? SizeConfig.s72.r,
            child: Divider(
              color: color ?? ColorConfig.divider,
              thickness: thickness,
              height: space ?? SizeConfig.s08.r,
            ),
          );
  }

  Widget vertical({
    double? height,
    double? space,
    double? thickness,
    Color? color,
  }) {
    return SizedBox(
      height: height ?? SizeConfig.s32.r,
      child: VerticalDivider(
        width: space ?? SizeConfig.s24.r,
        thickness: thickness ?? SizeConfig.s01.r,
        color: color ?? ColorConfig.divider,
      ),
    );
  }
}
