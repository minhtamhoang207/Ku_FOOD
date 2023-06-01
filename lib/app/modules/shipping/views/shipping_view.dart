import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:kufood/app/modules/shipping/controllers/shipping_controller.dart';

class ShippingView extends GetView<ShippingController> {
  const ShippingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFECECCC),
            Colors.white,
            Colors.white,
          ],
        ),
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        children: [
          const Gap(50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
              const Text(
                "Shipping",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Container()
            ],
          ),
          const Gap(200),
          Container(
            child: Image.asset(
              "assets/icons/ic_shipping2.png", // Replace with the actual path to your image file
              width: 150,
              height: 150,
            ),
          ),
          const Gap(20),
          Text(
            "Not have any order!",
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: 18, color: Colors.grey),
          )
        ],
      ),
    ));
  }
}
