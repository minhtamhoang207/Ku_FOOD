import 'package:get/get.dart';

import '../modules/create_order/bindings/create_order_binding.dart';
import '../modules/create_order/views/create_order_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/discount/bindings/discount_binding.dart';
import '../modules/discount/views/discount_view.dart';
import '../modules/favourite/bindings/favourite_binding.dart';
import '../modules/favourite/views/favourite_view.dart';
import '../modules/food_detail/bindings/food_detail_binding.dart';
import '../modules/food_detail/views/food_detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/navigator/bindings/navigator_binding.dart';
import '../modules/navigator/views/navigator_view.dart';
import '../modules/order_success/bindings/order_success_binding.dart';
import '../modules/order_success/views/order_success_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.DISCOUNT,
      page: () => const DiscountView(),
      binding: DiscountBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE,
      page: () => const FavouriteView(),
      binding: FavouriteBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.FOOD_DETAIL,
      page: () => const FoodDetailView(),
      binding: FoodDetailBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATOR,
      page: () => NavigatorView(),
      binding: NavigatorBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ORDER,
      page: () => const CreateOrderView(),
      binding: CreateOrderBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_SUCCESS,
      page: () => const OrderSuccessView(),
      binding: OrderSuccessBinding(),
    ),
  ];
}
