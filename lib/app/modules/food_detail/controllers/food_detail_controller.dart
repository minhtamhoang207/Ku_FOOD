import 'package:get/get.dart';
import 'package:kufood/app/data/model/product/product.dart';

class FoodDetailController extends GetxController {

  final count = 1.obs;
  final ProductModel product = Get.arguments;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increaseQuantity() {
    count.value++;
  }

  void decreaseQuantity() {
    if (count.value > 0) {
      count.value--;
    }
  }
}
