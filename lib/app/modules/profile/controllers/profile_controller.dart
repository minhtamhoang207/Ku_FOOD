import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:kufood/app/auth.dart';
import 'package:kufood/app/data/cache_manager.dart';
import 'package:kufood/app/data/model/user_local/user_model_local.dart';
import 'package:kufood/app/modules/signin/widget_tree.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  void deleteAccount() async {
    UserLocal? userLocal = await _cacheManager.getUserCached();
    await _cacheManager.addUserToCached(null);

    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> account = await prefs.getStringList(
          'accounts',
        ) ??
        [];
    account.add(userLocal!.name);
    print(account.toString());
    await prefs.setStringList('accounts', account);
    Fluttertoast.showToast(msg: "Xoá tài khoản thành công");
    Auth().signOut();
    Navigator.pushReplacement(
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
