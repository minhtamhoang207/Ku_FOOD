import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../discount/views/discount_view.dart';
import '../../favourite/views/favourite_view.dart';
import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';

class DashboardController extends GetxController {


  final currentIndex = 0.obs;

  final List<Widget> pages = [
    const HomeView(),
    const DiscountView(),
    const FavouriteView(),
    const ProfileView(),
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
