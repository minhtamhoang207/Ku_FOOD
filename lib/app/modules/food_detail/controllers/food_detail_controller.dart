import 'package:get/get.dart';
import 'package:kufood/app/data/model/product/product.dart';

class FoodDetailController extends GetxController {
  final count = 0.obs;
  var product = Rx<ProductModel?>(null);
  var statusSelect = Rx<bool>(false);
  @override
  void onInit() {
    product.value = Get.arguments as ProductModel;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void setStatus() {
    statusSelect.value = !statusSelect.value;
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
