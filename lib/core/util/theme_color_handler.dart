import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeColorHandler {
  Color colorHandler({
    required ThemeMode mode,
    required Color light,
    required Color dark,
  }) =>
      mode == ThemeMode.dark
          ? dark
          : mode == ThemeMode.light
              ? light
              : mode == ThemeMode.system &&
                      (Get.isDarkMode || Get.isPlatformDarkMode)
                  ? dark
                  : light;
}
