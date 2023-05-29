import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kufood/app/modules/signin/widget_tree.dart';
import 'package:kufood/app/routes/app_pages.dart';

class NavigatorController extends GetxController {
  //TODO: Implement NavigatorController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 1), () {
      print("giang");
      Navigator.push(
        Get.key.currentContext!,
        MaterialPageRoute(builder: (context) => WidgetTree()),
      );
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
