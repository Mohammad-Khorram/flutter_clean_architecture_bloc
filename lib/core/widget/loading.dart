import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';

class LoadingWidget {
  Widget circular({double? size, Color? color}) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, mode) {
        return SpinKitThreeBounce(
          color: color ??
              ThemeColorHandler().colorHandler(
                mode: mode,
                dark: ColorConfig.light,
                light: ColorConfig.color50,
              ),
          size: size ?? SizeConfig.s22.r,
        );
      },
    );
  }

  Widget paginate() {
    return circular(size: SizeConfig.s18.r);
  }
}
