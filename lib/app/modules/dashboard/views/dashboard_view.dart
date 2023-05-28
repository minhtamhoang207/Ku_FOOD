import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kufood/app/config/assets.gen.dart';
import 'package:kufood/app/config/colors.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
        controller.pages[controller.currentIndex.value]
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final DashboardController dashboardController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 25, top: 15),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Obx(() =>
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  dashboardController.currentIndex.value == 0
                      ? Assets.icons.icHome
                      : Assets.icons.icHomeDeactive
                ),
                onPressed: () {
                  dashboardController.currentIndex.value = 0;
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                    dashboardController.currentIndex.value == 1
                        ? Assets.icons.icDiscount
                        : Assets.icons.icDiscountDeactive
                ),
                onPressed: () {
                  dashboardController.currentIndex.value = 1;
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                    dashboardController.currentIndex.value == 2
                        ? Assets.icons.icHeart
                        : Assets.icons.icHeartDeactive
                ),
                onPressed: () {
                  dashboardController.currentIndex.value = 2;
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                    dashboardController.currentIndex.value == 3
                        ? Assets.icons.icProfile
                        : Assets.icons.icProfileDeactive
                ),
                onPressed: () {
                  dashboardController.currentIndex.value = 3;
                },
              ),
            ],
          )
      ),
    );
  }
}
