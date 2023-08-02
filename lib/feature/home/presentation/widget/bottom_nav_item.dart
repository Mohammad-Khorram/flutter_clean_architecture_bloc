import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/resource_boiler.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  final String title;

  const BottomNavItem({
    super.key,
    required this.selectedIcon,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      selectedIcon: Icon(selectedIcon, size: SizeConfig.s18.r),
      icon: Icon(icon, size: SizeConfig.s18.r),
      label: title,
    );
  }
}
