import 'package:get/get.dart';
import 'package:kufood/app/data/model/product/product.dart';

class CreateOrderController extends GetxController {
  final ProductModel product = Get.arguments['product'];
  final int quantity = Get.arguments['quantity'];

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
}
