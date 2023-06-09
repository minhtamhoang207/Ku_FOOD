import 'package:get/get.dart';

import '../controllers/pay_qr_controller.dart';

class PayQrBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PayQrController>(PayQrController());
  }
}
