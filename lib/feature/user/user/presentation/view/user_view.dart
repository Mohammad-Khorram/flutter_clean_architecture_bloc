import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';
import 'package:store/config/routing/route.dart';
import 'package:store/config/enumeration/enumeration.dart';
import 'package:store/feature/user/user/presentation/widget/user_item.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  void _navigateToLogin() => Get.toNamed(RouteConfig.login);

  void _navigateToProfile() => Get.toNamed(RouteConfig.profile);

  void _navigateToLanguage() => Get.toNamed(RouteConfig.language);

  void _navigateToTheme() => Get.toNamed(RouteConfig.theme);

  void _navigateToAsk() => Get.toNamed(RouteConfig.ask);

  void _navigateToFaq() => Get.toNamed(RouteConfig.faq);

  void _navigateToTerms() => Get.toNamed(RouteConfig.terms);

  void _navigateToPrivacy() => Get.toNamed(RouteConfig.privacy);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InjectionCore.instance<UserCubit>(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<UserCubit, bool>(
              builder: (context, login) => login
                  ? UserItem(
                      icon: Ionicons.person_outline,
                      title: 'profileTitle'.tr,
                      onTap: _navigateToProfile,
                      type: ItemDividerType.separator,
                    )
                  : UserItem(
                      icon: Ionicons.log_in_outline,
                      title: 'loginPrompt'.tr,
                      onTap: _navigateToLogin,
                      type: ItemDividerType.separator,
                    ),
            ),
            BlocBuilder<LanguageCubit, String>(
              builder: (context, mode) => UserItem(
                icon: Ionicons.language_outline,
                title: 'languageHelpTitle'.tr,
                value: BlocProvider.of<LanguageCubit>(context).getLanguage(),
                onTap: _navigateToLanguage,
              ),
            ),
            BlocBuilder<ThemeCubit, ThemeMode>(
              builder: (context, mode) => UserItem(
                icon: Ionicons.color_palette_outline,
                title: 'themeTitle'.tr,
                onTap: _navigateToTheme,
                value: BlocProvider.of<ThemeCubit>(context).getTheme(),
                type: ItemDividerType.separator,
              ),
            ),
            UserItem(
              icon: Ionicons.chatbubble_ellipses_outline,
              title: 'askTitle'.tr,
              onTap: _navigateToAsk,
            ),
            UserItem(
              icon: Ionicons.chatbubbles_outline,
              title: 'faqTitle'.tr,
              onTap: _navigateToFaq,
            ),
            UserItem(
              icon: Ionicons.warning_outline,
              title: 'termsTitle'.tr,
              onTap: _navigateToTerms,
            ),
            UserItem(
              icon: Ionicons.shield_checkmark_outline,
              title: 'privacyTitle'.tr,
              onTap: _navigateToPrivacy,
            ),
          ],
        ),
      ),
    );
  }
}
