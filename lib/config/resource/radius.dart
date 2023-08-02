import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/resource_boiler.dart';

class RadiusConfig {
  static final BorderRadius zero = BorderRadius.circular(SizeConfig.zero);

  // all
  static final BorderRadius r06All = BorderRadius.circular(SizeConfig.s06.r);
  static final BorderRadius r07All = BorderRadius.circular(SizeConfig.s07.r);
  static final BorderRadius r08All = BorderRadius.circular(SizeConfig.s08.r);
  static final BorderRadius r10All = BorderRadius.circular(SizeConfig.s10.r);
  static final BorderRadius r12All = BorderRadius.circular(SizeConfig.s12.r);
  static final BorderRadius r14All = BorderRadius.circular(SizeConfig.s14.r);
  static final BorderRadius r16All = BorderRadius.circular(SizeConfig.s16.r);
  static final BorderRadius r32All = BorderRadius.circular(SizeConfig.s32.r);
  // end all

  // only
  static final BorderRadius r12tl12tr = BorderRadius.only(
    topLeft: Radius.circular(SizeConfig.s12.r),
    topRight: Radius.circular(SizeConfig.s12.r),
  );

  static final BorderRadius r16tl16tr = BorderRadius.only(
    topLeft: Radius.circular(SizeConfig.s16.r),
    topRight: Radius.circular(SizeConfig.s16.r),
  );

  static final BorderRadius r28tl28tr = BorderRadius.only(
    topLeft: Radius.circular(SizeConfig.s28.r),
    topRight: Radius.circular(SizeConfig.s28.r),
  );
  // end only
}
