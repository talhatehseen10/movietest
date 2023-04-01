
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:poshtest/views/favorites/bindings/favorite_screen_binding.dart';
import 'package:poshtest/views/favorites/views/favorite_screen.dart';
import 'package:poshtest/views/home/bindings/home_screen_binding.dart';
import 'package:poshtest/views/home/controllers/home_screen_controller.dart';
import 'package:poshtest/views/home/views/home_screen.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeScreen(),
      binding:  HomeScreenBinding()
    ),
    GetPage(
      name: AppRoutes.FAVORITE,
      page: () => const FavoriteScreen(),
      binding:  FavoriteScreenBinding()
    ),
  ];
}
