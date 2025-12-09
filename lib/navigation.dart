import 'dart:developer';
import 'package:code_initial/presentation/pages/catalogue/catalogue_page.dart';
import 'package:code_initial/presentation/pages/catalogue/catalogue_controller.dart';
import 'package:code_initial/presentation/pages/profil/profil_page.dart';
import 'package:code_initial/presentation/pages/profil/profil_controller.dart';
import 'package:code_initial/presentation/pages/register/register_page.dart';
import 'package:get/get.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.CATALOGUE,
      page: () => const CataloguePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<CatalogueController>(() => CatalogueController());
      }),
    ),
    GetPage(
      name: Routes.PROFIL,
      page: () => const ProfilPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<ProfilController>(() => ProfilController());
      }),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
    ),
  ];
}

class Routes {
  static Future<String> get initialRoute async {
    return CATALOGUE;
  }

  static const String MAIN = "/";
  static const String REGISTER = '/register';
  static const String CATALOGUE = '/catalogue';
  static const String PROFIL = '/profil';
}
