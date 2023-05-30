import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:kufood/app/config/assets.gen.dart';
import 'package:kufood/app/data/cache_manager.dart';
import 'package:kufood/app/data/model/product/product.dart';
import 'package:kufood/app/data/model/user_local/user_model_local.dart';

class HomeController extends GetxController {
  List<String> listIcon = [
    Assets.icons.icCarrot,
    Assets.icons.icPizza,
    Assets.icons.icBurger,
    Assets.icons.icDrink
  ];

  var position = Rx<Position?>(null);
  var positionList = Rx<List<Placemark>>([]);
  var positionString = Rx<String>("Cau Giay");
  List<String> listCategory = ['Salad', 'Pizza', 'Burger', 'Drink'];
  var userLocal = Rx<UserLocal?>(null);
  final cacheManage = CacheManager.instance;
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

    userLocal.value = await cacheManage.getUserCached();
    position.value = await _determinePosition();
    print("Giang log" +
        position.value!.latitude.toString() +
        " " +
        position.value!.longitude.toString());
    if (position.value != null) {
      positionList.value = await placemarkFromCoordinates(
          position.value!.latitude, position.value!.longitude);
      print("Giang log size" + positionList.value.length.toString());
      print("Giang log location" + positionList.value[0].street.toString());
      if (positionList.value.isNotEmpty) {
        positionString.value = positionList.value.first.street!;
      }
    }

    super.onInit();
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
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
