import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/feature/other/presentation/widget/theme_item.dart';

class ThemeView extends StatefulWidget {
  static const String route = '/page/theme';

  const ThemeView({super.key});

  @override
  State<ThemeView> createState() => _ThemeViewState();
}

class _ThemeViewState extends State<ThemeView> {
  // models
  final List<ThemeModel> themeModels = [];

  final SecureStorageCore storage = InjectionCore.instance<SecureStorageCore>();

  @override
  void initState() {
    super.initState();
    _initModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: body());
  }

  void _initModel() {
    themeModels.addAll([
      ThemeModel(mode: ThemeMode.system, value: 'themeValueSystem'.tr),
      ThemeModel(mode: ThemeMode.dark, value: 'themeValueDark'.tr),
      ThemeModel(mode: ThemeMode.light, value: 'themeValueLight'.tr),
    ]);
  }

  void _changeTheme({required BuildContext context, required ThemeMode mode}) {
    BlocProvider.of<ThemeCubit>(context).changeTheme(mode);
    storage.writeValue(key: 'theme', value: mode.toString());
    Get.changeThemeMode(mode);
  }

  PreferredSizeWidget appBar() {
    return AppBarWidget().appBar(
      title: AppBarWidget().appBarTitle(title: 'themeTitle'.tr),
      leading: AppBarWidget().backAction(),
    );
  }

  Widget body() {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, mode) {
        return ListView.builder(
          itemCount: themeModels.length,
          padding: SpacingConfig.s16All,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ThemeItem(
              value: themeModels[index].value,
              selected: themeModels[index].mode == mode,
              onTap: () => _changeTheme(
                context: context,
                mode: themeModels[index].mode,
              ),
            );
          },
        );
      },
    );
  }
}
