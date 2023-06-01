import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kufood/app/data/model/product/product.dart';

class DiscountController extends GetxController {
  final List<String> listTab =
      ['All', 'Drink fruit', 'Burger chicken', 'Pizza', 'Salad'].obs;

  List<bool> statusSelect = [true, false, false, false].obs;

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

  void onSelect(int index) async {
    String jsonString =
        await rootBundle.loadString('assets/product_master_data.json');

    // Decode the JSON into a Dart list
    Map<String, dynamic> data = json.decode(jsonString);

    List<ProductModel> listProductResponse = (data['products'] as List)
        .map((item) => ProductModel.fromJson(item))
        .toList();
    switch (index) {
      case 0:
        listProduct.value = listProductResponse;
        break;
      case 1:
        listProduct.value = listProductResponse
            .where((element) => element.role == "drink")
            .map((e) => e)
            .toList();
        break;
      case 2:
        listProduct.value = listProductResponse
            .where((element) => element.role == "burger")
            .map((e) => e)
            .toList();
        break;
      case 3:
        listProduct.value = listProductResponse
            .where((element) => element.role == "pizza")
            .map((e) => e)
            .toList();
        break;
      case 4:
        listProduct.value = listProductResponse
            .where((element) => element.role == "salad")
            .map((e) => e)
            .toList();
        break;
      default:
        listProduct.value = [];
        break;
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
