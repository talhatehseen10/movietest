import 'package:get/get.dart';
import 'package:poshtest/views/home/models/movie_name_modal.dart';

class FavoriteScreenController extends GetxController {
  RxList<MovieNameModel> favList = RxList<MovieNameModel>();
  RxBool isSearch = true.obs;

  void addFav(MovieNameModel movieNameModel) {
    if (favList.contains(movieNameModel) == false) {
      favList.add(movieNameModel);
      Get.snackbar("Added Sucessfully", "Added to Favorite");
    } else {}
  }
}
