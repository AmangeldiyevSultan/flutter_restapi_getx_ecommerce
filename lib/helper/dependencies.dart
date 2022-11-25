import 'package:get/get.dart';
import 'package:myflutter_ecommerce/controllers/cart_controller.dart';
import 'package:myflutter_ecommerce/controllers/popular_product_controller.dart';
import 'package:myflutter_ecommerce/data/api/api_client.dart';
import 'package:myflutter_ecommerce/data/repository/cart_repo.dart';
import 'package:myflutter_ecommerce/data/repository/popular_product_repo.dart';
import 'package:myflutter_ecommerce/utils/app_constants.dart';

import '../controllers/recommended_product_controller.dart';
import '../data/repository/recommended_product_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  //sharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);

  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cardRepo: Get.find()));
}
