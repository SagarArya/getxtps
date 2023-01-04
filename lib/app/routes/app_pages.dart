import 'package:get/get.dart';
import 'package:getxstandard/app/bindings/settings_binding.dart';
import 'package:getxstandard/app/bindings/sidemenu_binding.dart';
import 'package:getxstandard/app/bindings/splash_binding.dart';
import 'package:getxstandard/app/pages/home/home_page.dart';
import 'package:getxstandard/app/pages/settings/settings_page.dart';
import 'package:getxstandard/app/pages/sidemenu/sidemenu_page.dart';
import 'package:getxstandard/app/pages/splash/splash_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
        name: Routes.SPLASH,
        page: () => SplashPage(),
        binding: SplashBinding()),
        
    GetPage(
        name: Routes.SETTINGS,
        page: () => SettingsPage(),
        binding: SettingsBinding()),
        // GetPage(
        // name: Routes.SIDEMENU,
        // page: () => SideMenuPage(),
        // binding: SideMenuBinding()),//as side menu is attached as drawer, no separate page requried
  ];
}
