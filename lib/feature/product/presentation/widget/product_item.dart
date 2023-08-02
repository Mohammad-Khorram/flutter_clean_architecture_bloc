import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/config/boiler/entity_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/core/util/integer.dart';

class ProductItem extends StatelessWidget {
  final ProductResponseEntity entity;
  final VoidCallback onTap;

  const ProductItem({super.key, required this.entity, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.s12.r),
          Row(
            children: [
              image(),
              SizedBox(width: SizeConfig.s08.r),
              content(),
            ],
          ),
          SizedBox(height: SizeConfig.s12.r),
          divider(),
        ],
      ),
    );
  }

  Widget image() {
    return Padding(
      padding: SpacingConfig.s12Horizontal,
      child: ClipRRect(
        borderRadius: RadiusConfig.r12All,
        child: CachedNetworkImage(
          imageUrl: entity.image!,
          width: SizeConfig.s96.r,
          height: SizeConfig.s120.r,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget content() {
    return SizedBox(
      height: SizeConfig.s108.r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [rate(), SizedBox(height: SizeConfig.s06.r), price()],
          ),
        ],
      ),
    );
  }

  Widget title() {
    return SizedBox(
      width: Get.width * 0.58,
      child: Text(
        entity.title!,
        style: TextStyleConfig.productItemTitle,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget rate() {
    return Row(
      children: [
        Icon(Ionicons.star, color: ColorConfig.yellow, size: SizeConfig.s12.r),
        SizedBox(width: SizeConfig.s04.r),
        Text(
          '${entity.rating!.rate!}',
          style: TextStyleConfig.productItemRate,
        ),
        SizedBox(width: SizeConfig.s02.r),
        Text(
          '(${entity.rating!.count!})',
          style: TextStyleConfig.productItemRate,
        ),
      ],
    );
  }

  Widget price() {
    return Text(
      '\$${IntegerCore().removeZeroAfterDecimal(entity.price!)}',
      style: TextStyleConfig.productItemPrice,
    );
  }

  Widget divider() {
    return Padding(
      padding: SpacingConfig.s12Horizontal,
      child: DividerWidget().horizontalWithTheme(),
    );
  }
}
