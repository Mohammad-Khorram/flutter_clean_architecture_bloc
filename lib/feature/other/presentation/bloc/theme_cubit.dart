import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void changeTheme(ThemeMode mode) => emit(mode);

  String getTheme() {
    switch (state) {
      case ThemeMode.system:
        return 'themeValueSystem'.tr;

      case ThemeMode.dark:
        return 'themeValueDark'.tr;

      case ThemeMode.light:
        return 'themeValueLight'.tr;

      default:
        return '';
    }
  }
}
