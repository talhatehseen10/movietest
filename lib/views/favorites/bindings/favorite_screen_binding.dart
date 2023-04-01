
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:poshtest/views/favorites/controllers/favorite_screen_controller.dart';

class FavoriteScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteScreenController());
  }
}
