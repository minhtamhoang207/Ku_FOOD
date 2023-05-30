import 'package:get/get.dart';
import 'package:kufood/app/modules/profile/controllers/profile_controller.dart';

import '../../discount/controllers/discount_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.put<ProfileController>(ProfileController());
    Get.put<HomeController>(HomeController());

    Get.put<DiscountController>(DiscountController());
  }
}
