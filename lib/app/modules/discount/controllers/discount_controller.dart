import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kufood/app/data/model/product/product.dart';

class DiscountController extends GetxController {
  final List<String> listTab = [
    'Drink fruit',
    'Burger chicken',
    'Pizza',
    'Salad'
  ];
  var listProduct = Rx<List<ProductModel>>([]);
  final currentTab = 0.obs;

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
}
