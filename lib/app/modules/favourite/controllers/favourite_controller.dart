import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kufood/app/data/model/product/product.dart';

class FavouriteController extends GetxController {
  //TODO: Implement FavouriteController

  final count = 0.obs;
  var listProduct = Rx<List<ProductModel>>([]);
  @override
  void onInit() async {
    String jsonString =
        await rootBundle.loadString('assets/product_master_data.json');

    // Decode the JSON into a Dart list
    Map<String, dynamic> data = json.decode(jsonString);

    List<ProductModel> listProductResponse = (data['products'] as List)
        .map((item) => ProductModel.fromJson(item))
        .toList();
    listProduct.value = listProductResponse;
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
