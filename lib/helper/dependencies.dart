import 'package:e_mart/controllers/recommended_product_controller.dart';
import 'package:e_mart/data/api/api_client.dart';
import 'package:get/get.dart';

import '../data/repository/popular_product_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

//repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
}
