import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poshtest/constants/constants.dart';
import 'package:poshtest/routes/app_pages.dart';
import 'package:poshtest/routes/app_routes.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      title: AppStrings.APP_NAME,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.HOME,
      getPages: AppPages.pages,
      defaultTransition: Transition.cupertino,
      smartManagement: SmartManagement.full,
    );
  }
}
