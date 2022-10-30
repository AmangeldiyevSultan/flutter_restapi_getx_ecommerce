import 'package:get/get.dart';
import 'package:myflutter_ecommerce/controllers/popular_product_controller.dart';
import 'package:myflutter_ecommerce/data/api/api_client.dart';
import 'package:myflutter_ecommerce/data/repository/popular_product_repo.dart';
import 'package:myflutter_ecommerce/utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
