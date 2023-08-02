import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/config/boiler/resource_boiler.dart';

class LanguageItem extends StatelessWidget {
  final String title;
  final String value;
  final bool selected;
  final VoidCallback onTap;

  const LanguageItem({
    super.key,
    required this.title,
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
        title.tr,
        style: selected
            ? TextStyleConfig.languageBoldStyle
            : TextStyleConfig.languageNormalStyle,
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
