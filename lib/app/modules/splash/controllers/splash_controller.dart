import 'package:get/get.dart';
import 'package:kufood/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.NAVIGATOR);
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
