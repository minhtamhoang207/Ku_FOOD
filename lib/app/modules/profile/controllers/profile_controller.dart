import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kufood/app/auth.dart';
import 'package:kufood/app/data/cache_manager.dart';
import 'package:kufood/app/modules/signin/widget_tree.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  final _cacheManager = CacheManager.instance;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void logout() async {
    await _cacheManager.addUserToCached(null);
    await Auth().signOut();
    Navigator.push(
      Get.key.currentContext!,
      MaterialPageRoute(builder: (context) => const WidgetTree()),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
