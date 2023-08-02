import 'package:get/get.dart';
import 'package:store/config/boiler/view_boiler.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/config/routing/route.dart';

class PageConfig {
  static List<GetPage> pages = [
    // home
    GetPage(name: RouteConfig.home, page: HomeView.new),
    GetPage(name: RouteConfig.notFound, page: NotFoundView.new),

    // product
    GetPage(name: RouteConfig.productList, page: ProductListView.new),
    GetPage(name: RouteConfig.productDetails, page: ProductDetailsView.new),
    GetPage(name: RouteConfig.fullScreenImage, page: FullScreenImageView.new),

    // auth
    GetPage(name: RouteConfig.login, page: LoginView.new),

    // profile
    GetPage(name: RouteConfig.profile, page: ProfileView.new),

    // other
    GetPage(name: RouteConfig.language, page: LanguageView.new),
    GetPage(name: RouteConfig.theme, page: ThemeView.new),
    GetPage(name: RouteConfig.ask, page: AskView.new),
    GetPage(name: RouteConfig.faq, page: FaqView.new),
    GetPage(name: RouteConfig.terms, page: TermsView.new),
    GetPage(name: RouteConfig.privacy, page: PrivacyView.new),
  ];
}
