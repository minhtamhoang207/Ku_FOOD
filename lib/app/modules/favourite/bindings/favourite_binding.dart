import 'package:get/get.dart';

import '../controllers/favourite_controller.dart';

class FavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FavouriteController>(FavouriteController());
  }
}
