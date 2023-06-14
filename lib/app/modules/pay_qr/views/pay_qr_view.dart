import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kufood/app/config/assets.gen.dart';
import 'package:kufood/app/config/colors.dart';
import 'package:kufood/app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

import '../controllers/pay_qr_controller.dart';

class PayQrView extends GetView<PayQrController> {
  const PayQrView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        Assets.images.pay.path,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      )),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              
              Get.offAndToNamed(Routes.ORDER_SUCCESS);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Confirm',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
