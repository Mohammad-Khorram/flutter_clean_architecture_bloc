import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/resource_boiler.dart';

class TextStyleConfig {
  static final appBarTitle = TextStyle(fontSize: SizeConfig.s15.sp);

  static final appBarSubtitle = TextStyle(fontSize: SizeConfig.s11.sp);

  static final snackBarStyle = TextStyle(
    fontFamily: 'poppins',
    fontSize: SizeConfig.s11.sp,
    color: ColorConfig.white,
  );

  static final errorStyle = TextStyle(fontSize: SizeConfig.s11.sp, height: 2);

  static final bottomNavigationBarStyle =
      TextStyle(fontSize: SizeConfig.s10_5.sp);

  static const elevatedActionTitle = TextStyle(color: ColorConfig.white
      // fontWeight: FontWeight.bold,
      );

  static final textFormFieldErrorStyle = TextStyle(
    fontSize: SizeConfig.s12.sp,
    color: ColorConfig.error,
    fontWeight: FontWeight.bold,
  );

  static final textFormFieldStyle = TextStyle(fontSize: SizeConfig.s13.sp);

  static final textFormFieldHelperStyle =
      TextStyle(fontSize: SizeConfig.s11.sp);

  static final textFormFieldBorderStyle = OutlineInputBorder(
    borderSide: BorderSide(
      color: ColorConfig.color225,
      width: SizeConfig.s01_5.r,
    ),
    borderRadius: RadiusConfig.r08All,
  );

  static final textFormFieldFocusedBorderStyle = OutlineInputBorder(
    borderSide: BorderSide(
      color: ColorConfig.primary,
      width: SizeConfig.s02.r,
    ),
    borderRadius: RadiusConfig.r08All,
  );

  static final textFormFieldErrorBorderStyle = OutlineInputBorder(
    borderSide: BorderSide(color: ColorConfig.error, width: SizeConfig.s01_5.r),
    borderRadius: RadiusConfig.r08All,
  );

  static final textFormFieldFocusedErrorBorderStyle = OutlineInputBorder(
    borderSide: BorderSide(color: ColorConfig.error, width: SizeConfig.s02.r),
    borderRadius: RadiusConfig.r08All,
  );

  static TextStyle bottomSheetTitleStyle = TextStyle(
    fontSize: SizeConfig.s14.r,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bottomSheetContentStyle =
      TextStyle(fontSize: SizeConfig.s11.r);

  static TextStyle bottomSheetContentBoldStyle = TextStyle(
    fontSize: SizeConfig.s11.r,
    fontWeight: FontWeight.bold,
  );

  static final hintStyle = TextStyle(
    color: ColorConfig.hint,
    fontSize: SizeConfig.s13.sp,
    fontWeight: FontWeight.normal,
  );

  static final categoryTitle = TextStyle(fontSize: SizeConfig.s13.sp);

  static final productItemTitle = TextStyle(fontSize: SizeConfig.s12.sp);

  static final productItemRate = TextStyle(fontSize: SizeConfig.s10.sp);

  static final productItemPrice = TextStyle(
    fontSize: SizeConfig.s12.sp,
    fontWeight: FontWeight.bold,
  );

  static final productDetailsTitle = TextStyle(
    fontSize: SizeConfig.s15.sp,
    fontWeight: FontWeight.bold,
  );

  static final productDetailsRate = TextStyle(fontSize: SizeConfig.s11.sp);

  static final productDetailsDescription = TextStyle(
    fontSize: SizeConfig.s12.sp,
    height: 1.7,
  );

  static final productDetailsPrice = TextStyle(
    fontSize: SizeConfig.s16.sp,
    fontWeight: FontWeight.bold,
  );

  static final userTitle = TextStyle(fontSize: SizeConfig.s13.sp);

  static final userValue = TextStyle(
    fontSize: SizeConfig.s10.sp,
    color: ColorConfig.primary,
  );

  static final loginTitle = TextStyle(
    fontSize: SizeConfig.s26.sp,
    fontWeight: FontWeight.bold,
  );

  static final loginForgetPass = TextStyle(
    fontSize: SizeConfig.s11.sp,
  );

  static final loginRegisterHint1 = TextStyle(
    fontSize: SizeConfig.s11.sp,
    color: ColorConfig.color150,
  );

  static final loginRegisterHint2 = TextStyle(
    fontSize: SizeConfig.s11.sp,
    fontWeight: FontWeight.bold,
  );

  static final profileTitle = TextStyle(fontSize: SizeConfig.s11.sp);

  static final profileValue = TextStyle(
    fontSize: SizeConfig.s11.sp,
    color: ColorConfig.primary,
    fontWeight: FontWeight.bold,
  );

  static final languageNormalStyle = TextStyle(fontSize: SizeConfig.s12.sp);

  static final languageBoldStyle = TextStyle(
    fontSize: SizeConfig.s12.sp,
    fontWeight: FontWeight.bold,
  );

  static final themeNormalStyle = TextStyle(fontSize: SizeConfig.s12.sp);

  static final themeBoldStyle = TextStyle(
    fontSize: SizeConfig.s12.sp,
    fontWeight: FontWeight.bold,
  );
}
