// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/config/boiler/view_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/feature/home/presentation/widget/bottom_nav.dart';

class HomeView extends StatefulWidget {
  static const String route = '/';

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final SecureStorageCore storage = InjectionCore.instance<SecureStorageCore>();

  @override
  void initState() {
    super.initState();
    _initUser();
    _initLanguage();
    _initTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavBarCubit()),
      ],
      child: Scaffold(
        appBar: appBar(),
        body: body(),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }

  /// set user login if user logged
  Future<void> _initUser() async {
    if (await InjectionCore.instance<UserCore>().isLogin()) {
      InjectionCore.instance<UserCubit>().login(true);
    }
  }

  /// handle language
  Future<void> _initLanguage() async {
    if (await storage.fetchValue(key: 'lang') == null) {
      return;
    }

    BlocProvider.of<LanguageCubit>(context)
        .changeLanguage(await storage.fetchValue(key: 'lang'));
    Get.updateLocale(Locale(await storage.fetchValue(key: 'lang')));
  }

  /// handle theme
  Future<void> _initTheme() async {
    if (await storage.fetchValue(key: 'theme') == null) {
      return;
    }

    switch (await storage.fetchValue(key: 'theme')) {
      case 'ThemeMode.system':
        Get.changeThemeMode(ThemeMode.system);
        BlocProvider.of<ThemeCubit>(context).changeTheme(ThemeMode.system);
        break;

      case 'ThemeMode.dark':
        Get.changeThemeMode(ThemeMode.dark);
        BlocProvider.of<ThemeCubit>(context).changeTheme(ThemeMode.dark);
        break;

      case 'ThemeMode.light':
        Get.changeThemeMode(ThemeMode.light);
        BlocProvider.of<ThemeCubit>(context).changeTheme(ThemeMode.light);
        break;
    }
  }

  PreferredSizeWidget appBar() {
    return AppBarWidget().appBar(
      title: AppBarWidget().appBarTitle(title: 'appName'.tr),
      centerTitle: true,
    );
  }

  Widget body() {
    return BlocBuilder<BottomNavBarCubit, int>(
      builder: (context, index) {
        return IndexedStack(
          index: index,
          children: const [ProductListView(), CategoryView(), UserView()],
        );
      },
    );
  }
}
