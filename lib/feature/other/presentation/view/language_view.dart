import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/model_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/feature/other/presentation/widget/language_item.dart';

class LanguageView extends StatefulWidget {
  static const String route = '/page/language';

  const LanguageView({super.key});

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  // models
  List<LanguageModel> languageModels = [];

  SecureStorageCore storage = InjectionCore.instance<SecureStorageCore>();

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
    languageModels.addAll([
      LanguageModel(title: 'English'.tr, value: 'en'.tr),
      LanguageModel(title: 'العربیة'.tr, value: 'ar'.tr),
      LanguageModel(title: 'فارسی'.tr, value: 'fa'.tr),
      LanguageModel(title: 'Español'.tr, value: 'sp'.tr),
      LanguageModel(title: 'Français'.tr, value: 'fr'.tr),
      LanguageModel(title: '汉语'.tr, value: 'chi'.tr),
      LanguageModel(title: 'हिन्दी'.tr, value: 'hin'.tr),
    ]);
  }

  void _changeLanguage({required String value}) {
    BlocProvider.of<LanguageCubit>(context).changeLanguage(value);
    storage.writeValue(key: 'lang', value: value);
    Get.updateLocale(Locale(value));
  }

  PreferredSizeWidget appBar() {
    return AppBarWidget().appBar(
      title: AppBarWidget().appBarTitle(title: 'languageTitle'.tr),
      leading: AppBarWidget().backAction(),
    );
  }

  Widget body() {
    return BlocBuilder<LanguageCubit, String>(
      builder: (context, value) {
        return DelayedWidget(
          animationDuration: DurationConfig.widgetAnimation,
          child: ListView.builder(
            itemCount: languageModels.length,
            padding: SpacingConfig.s16All,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return LanguageItem(
                title: languageModels[index].title,
                value: languageModels[index].value,
                selected: languageModels[index].value == value,
                onTap: () =>
                    _changeLanguage(value: languageModels[index].value),
              );
            },
          ),
        );
      },
    );
  }
}
