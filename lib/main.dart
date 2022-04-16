import 'package:e_mart/controllers/popular_product_controller.dart';
import 'package:e_mart/pages/food/popular_food_detail.dart';
import 'package:e_mart/pages/food/recommended_food_detail.dart';
import 'package:e_mart/pages/home/food_page_body.dart';
import 'package:e_mart/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home/main_food_page.dart';
import 'package:e_mart/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularPrductList();
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainFoodPage(),
      );
  }
}
