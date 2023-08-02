import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/config/boiler/resource_boiler.dart';

class ThemeItem extends StatelessWidget {
  final String value;
  final bool selected;
  final VoidCallback onTap;

  const ThemeItem({
    super.key,
    required this.value,
    this.selected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: RadiusConfig.r12All,
      child: selected
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [titleView(), selectedView()],
            )
          : titleView(),
    );
  }

  Widget titleView() {
    return Padding(
      padding: SpacingConfig.s16h20v,
      child: Text(
        value.tr,
        style: selected
            ? TextStyleConfig.themeBoldStyle
            : TextStyleConfig.themeNormalStyle,
      ),
    );
  }

  Widget selectedView() {
    return Padding(
      padding: SpacingConfig.s12Horizontal,
      child: Icon(
        Ionicons.checkmark_circle,
        color: ColorConfig.primary,
      ),
    );
  }
}
