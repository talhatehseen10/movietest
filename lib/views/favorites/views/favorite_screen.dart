import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poshtest/views/favorites/controllers/favorite_screen_controller.dart';

class FavoriteScreen extends GetView<FavoriteScreenController> {
  static const String routeName = '/favroite_Screen';
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Favroite Movies"),
            actions: [_favNumber(context)],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  _buildFavList(context),
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildFavList(BuildContext context) {
    return Obx(() => Container(
          height: Get.height * 0.6,
          width: Get.width * 0.9,
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    controller.addFav(controller.favList[index]);
                  },
                  leading: SizedBox(
                    child: Image.network(
                      controller.favList[index].poster.toString(),
                    ),
                  ),
                  title: Text(
                    "${controller.favList[index].title}",
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  subtitle: Text(
                    "${controller.favList[index].type} \n${controller.favList[index].year}",
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      controller.favList.remove(controller.favList[index]);
                    },
                    icon: const Icon(Icons.delete),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.black,
                );
              },
              itemCount: controller.favList.length),
        ));
  }

  Widget _favNumber(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: Center(
            child: Text(
              "${controller.favList.length}",
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
