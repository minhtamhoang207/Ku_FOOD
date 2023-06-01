import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kufood/app/data/cache_manager.dart';
import 'package:kufood/app/data/model/product/product.dart';

class ListOrderController extends GetxController {
  final status = Rx<String?>(null);
  final count = 0.obs;
  final cacheManager = CacheManager.instance;
  var listProduct = Rx<List<ProductModel>>([]);
  @override
  void onInit() async {
    print("giang");
    if (Get.arguments != null) {
      status.value = Get.arguments as String;
    }
    print(status.value);
    if (status.value != null && status.value!.contains("order_list")) {
      listProduct.value = (cacheManager.getAllProduct() ?? [])
          .map((e) => ProductModel.fromLocal(e))
          .toList();
      listProduct.refresh();
    } else {
      String jsonString =
          await rootBundle.loadString('assets/product_master_data.json');

      // Decode the JSON into a Dart list
      Map<String, dynamic> data = json.decode(jsonString);

      List<ProductModel> listProductResponse = (data['products'] as List)
          .map((item) => ProductModel.fromJson(item))
          .toList();
      listProduct.value = listProductResponse;
    }

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

  void increment() => count.value++;
}
