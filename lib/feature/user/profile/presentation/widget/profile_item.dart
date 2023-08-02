import 'package:flutter/material.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/config/enumeration/enumeration.dart';

class ProfileItem extends StatelessWidget {
  final ProfileItemModel model;
  final ItemDividerType type;

  const ProfileItem({
    super.key,
    required this.model,
    this.type = ItemDividerType.divider,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        content(),
        // type == ItemDividerType.divider ? divider() : const SeparatorItem(),
      ],
    );
  }

  Widget content() {
    return Padding(
      padding: SpacingConfig.s16All,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [titleView(), valueView()],
      ),
    );
  }

  Widget titleView() {
    return Text(model.title, style: TextStyleConfig.profileTitle);
  }

  Widget valueView() {
    return Text(model.value, style: TextStyleConfig.profileValue);
  }

  Widget divider() {
    return DividerWidget().horizontalWithTheme();
  }
}
