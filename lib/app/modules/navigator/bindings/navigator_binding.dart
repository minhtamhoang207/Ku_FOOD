import 'package:get/get.dart';

import '../controllers/navigator_controller.dart';

class NavigatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NavigatorController>(NavigatorController());
  }
}
