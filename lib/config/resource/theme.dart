import 'package:flutter/material.dart';
import 'package:store/config/boiler/resource_boiler.dart';

class ThemeConfig {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'poppins',
    useMaterial3: true,
    primarySwatch: ColorConfig.primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    snackBarTheme:
        SnackBarThemeData(contentTextStyle: TextStyleConfig.snackBarStyle),
    navigationBarTheme: NavigationBarThemeData(
        labelTextStyle: MaterialStateProperty.all(
            TextStyleConfig.bottomNavigationBarStyle)),
    brightness: Brightness.light,
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'poppins',
    useMaterial3: true,
    primarySwatch: ColorConfig.primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    snackBarTheme:
        SnackBarThemeData(contentTextStyle: TextStyleConfig.snackBarStyle),
    navigationBarTheme: NavigationBarThemeData(
        labelTextStyle: MaterialStateProperty.all(
            TextStyleConfig.bottomNavigationBarStyle)),
    brightness: Brightness.dark,
  );
}
