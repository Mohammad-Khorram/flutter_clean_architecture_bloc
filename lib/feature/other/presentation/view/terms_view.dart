import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/widget_boiler.dart';

class TermsView extends StatefulWidget {
  static const String route = '/page/terms';

  const TermsView({super.key});

  @override
  State<TermsView> createState() => _TermsViewState();
}

class _TermsViewState extends State<TermsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: body());
  }

  PreferredSizeWidget appBar() {
    return AppBarWidget().appBar(
      title: AppBarWidget().appBarTitle(title: ''.tr),
      leading: AppBarWidget().backAction(),
    );
  }

  Widget body() {
    return Container(
      padding: SpacingConfig.s20Horizontal,
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: SizeConfig.s20.r),
          title(),
          divide(),
          terms(),
        ],
      ),
    );
  }

  Widget title() {
    return Text('termsTitle'.tr, style: TextStyleConfig.otherTitle);
  }

  Widget divide() {
    return DividerWidget().horizontal(
      color: ColorConfig.primary,
      matchParent: false,
      thickness: SizeConfig.s02.r,
      space: SizeConfig.s20.r,
    );
  }

  Widget terms() {
    return Expanded(
      child: SingleChildScrollView(
        child: Text(
          'termsDescription'.tr,
          style: TextStyleConfig.otherContent,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
