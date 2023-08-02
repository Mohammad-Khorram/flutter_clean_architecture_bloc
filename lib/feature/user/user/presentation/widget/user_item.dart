import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/config/enumeration/enumeration.dart';
import 'separator_item.dart';

class UserItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final ItemDividerType type;
  final String? value;

  const UserItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.type = ItemDividerType.divider,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          content(),
          if (type == ItemDividerType.separator) ...[
            SizedBox(height: SizeConfig.s09.r),
            const SeparatorItem(),
          ],
          if (type == ItemDividerType.divider) divider(),
        ],
      ),
    );
  }

  Widget content() {
    return Padding(
      padding: SpacingConfig.s16Vertical,
      child: Row(
        children: [
          SizedBox(width: SizeConfig.s14.r),
          iconView(),
          SizedBox(width: SizeConfig.s18.r),
          value == null
              ? titleView()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleView(),
                    SizedBox(height: SizeConfig.s02.r),
                    valueView(),
                  ],
                ),
        ],
      ),
    );
  }

  Widget iconView() {
    return Icon(icon, size: SizeConfig.s20.r);
  }

  Widget titleView() {
    return Text(title, style: TextStyleConfig.userTitle);
  }

  Widget valueView() {
    return Text(value!, style: TextStyleConfig.userValue);
  }

  Widget divider() {
    return Padding(
      padding: EdgeInsets.only(
        left: 'direction'.tr == 'ltr' ? SizeConfig.s52.r : SizeConfig.zero,
        right: 'direction'.tr == 'ltr' ? SizeConfig.zero : SizeConfig.s52.r,
      ),
      child: DividerWidget().horizontalWithTheme(),
    );
  }
}
