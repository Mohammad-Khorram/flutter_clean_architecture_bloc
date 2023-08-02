import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'bottom_nav_item.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, int>(
      builder: (context, state) {
        return NavigationBar(
          indicatorColor: ColorConfig.accent.withOpacity(0.2),
          destinations: [
            BottomNavItem(
              selectedIcon: Ionicons.storefront,
              icon: Ionicons.storefront_outline,
              title: 'homeBnvHome'.tr,
            ),
            BottomNavItem(
              selectedIcon: Ionicons.grid,
              icon: Ionicons.grid_outline,
              title: 'homeBnvCategory'.tr,
            ),
            BottomNavItem(
              selectedIcon: Ionicons.person,
              icon: Ionicons.person_outline,
              title: 'homeBnvUser'.tr,
            ),
          ],
          selectedIndex: state,
          onDestinationSelected: (index) =>
              BlocProvider.of<BottomNavBarCubit>(context).changeIndex(index),
        );
      },
    );
  }
}
