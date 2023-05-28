import 'package:get/get.dart';

class FoodDetailController extends GetxController {

  final count = 0.obs;
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
