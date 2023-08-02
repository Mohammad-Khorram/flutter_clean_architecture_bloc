import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';

class CategoryItem extends StatelessWidget {
  final CategoryResponseEntity entity;
  final int index;
  final VoidCallback onTap;

  const CategoryItem({
    super.key,
    required this.entity,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: SpacingConfig.s16h18v,
            child: Row(
              children: [
                icon(),
                SizedBox(width: SizeConfig.s20.r),
                title(),
              ],
            ),
          ),
          divider(),
        ],
      ),
    );
  }

  Widget icon() {
    return Icon(Ionicons.grid_outline, size: SizeConfig.s16.r);
  }

  Widget title() {
    return Text(
      entity.categories![index],
      style: TextStyleConfig.categoryTitle,
    );
  }

  Widget divider() {
    return DividerWidget().horizontalWithTheme();
  }
}
