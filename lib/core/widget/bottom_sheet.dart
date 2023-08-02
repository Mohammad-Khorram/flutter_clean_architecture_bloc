import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';

class BottomSheetWidget {
  void bottomSheet({
    required BuildContext context,
    required Widget content,
    required String title,
  }) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: RadiusConfig.r16tl16tr),
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.s03.r),
                bottomSheetContent(content: content, title: title),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget bottomSheetContent({required Widget content, required String title}) {
    return Column(
      children: [
        Container(
          alignment:
              'direction'.tr == 'ltr' ? Alignment.topLeft : Alignment.topRight,
          padding: SpacingConfig.s16All,
          child: bottomSheetTitle(title),
        ),
        divider(),
        content,
      ],
    );
  }

  Widget divider() {
    return DividerWidget().horizontalWithTheme();
  }

  Widget bottomSheetTitle(String title) {
    return Text(title, style: TextStyleConfig.bottomSheetTitleStyle);
  }

  Widget itemView({
    required Widget content,
    required VoidCallback onTap,
    IconData? icon,
  }) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: icon == null
            ? content
            : Row(
                children: [
                  Icon(icon, color: ColorConfig.primary),
                  SizedBox(width: SizeConfig.s16.r),
                  content,
                ],
              ),
      ),
    );
  }

  Widget contentView({required String content, required TextStyle style}) {
    return Text(content, style: style);
  }
}
