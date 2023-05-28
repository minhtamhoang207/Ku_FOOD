import 'package:get/get.dart';
import 'package:kufood/app/config/assets.gen.dart';

class HomeController extends GetxController {

  List<String> listIcon = [
    Assets.icons.icCarrot,
    Assets.icons.icPizza,
    Assets.icons.icBurger,
    Assets.icons.icDrink
  ];

  List<String> listCategory = [
    'Salad',
    'Pizza',
    'Burger',
    'Drink'
  ];

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
