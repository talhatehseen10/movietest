import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poshtest/routes/routes.dart';
import 'package:poshtest/views/home/controllers/home_screen_controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  static const String routeName = '/home_Screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Home Screen"),
            actions: [_favButton(context)],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  _buildSearchField(context),
                  _buildFilterSection(context),
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.9,
      height: Get.height * 0.1,
      child: TextFormField(
        autofocus: false,
        controller: controller.searchTextController,
        onChanged: (value) {
          if (value.length >= 3) {
            controller.getMovieList(value.toLowerCase());
          } else {
            controller.isSearch.value = true;
          }
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: GestureDetector(
            onTap: () {
              controller.clearMovieList();
            },
            child: const Icon(Icons.close),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _buildFilterSection(BuildContext context) {
    return Obx(() => controller.isSearch.value
        ? const SizedBox()
        : Container(
            height: Get.height * 0.6,
            width: Get.width * 0.9,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      controller.addFav(controller.movieNameList[index]);
                    },
                    leading: SizedBox(
                      child: Image.network(
                          controller.movieNameList[index].poster.toString()),
                    ),
                    title: Text(
                      "${controller.movieNameList[index].title}",
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.black,
                  );
                },
                itemCount: controller.movieNameList.length),
          ));
  }

  Widget _favButton(BuildContext context) {
    return IconButton(
        onPressed: () {
          Get.toNamed(AppRoutes.FAVORITE);
        },
        icon: const Icon(Icons.favorite));
  }
}
