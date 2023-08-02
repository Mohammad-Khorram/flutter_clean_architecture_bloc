import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/config/routing/page.dart';
import 'package:store/config/routing/route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/widget/not_found.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InjectionCore.setupDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => LanguageCubit()),
        BlocProvider(
            create: (_) => ProductCubit(productUseCase: injectionInstance())),
        BlocProvider(create: (_) => ProductSortCubit()),
      ],
      child: ScreenUtilInit(
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'appName'.tr,
            theme: ThemeConfig.lightTheme,
            darkTheme: ThemeConfig.darkTheme,
            themeMode: ThemeMode.system,
            locale: const Locale('en'),
            fallbackLocale: const Locale('en'),
            translations: LangCore(),
            initialRoute: RouteConfig.home,
            unknownRoute:
                GetPage(name: '/not_found', page: () => const NotFoundView()),
            onUnknownRoute: (settings) =>
                MaterialPageRoute(builder: (_) => const NotFoundView()),
            getPages: PageConfig.pages,
          );
        },
      ),
    ),
  );
}
