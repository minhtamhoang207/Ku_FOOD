import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kufood/app/config/assets.gen.dart';
import 'package:kufood/app/config/colors.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          Assets.images.imgSplash.path,
          height: 129,
          width: 129,
        )
      ),
    );
  }
}
