import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'dart:io' show Platform;

import 'package:get/get.dart';
import 'package:kufood/app/config/assets.gen.dart';
import 'package:kufood/app/config/colors.dart';
import 'package:kufood/app/routes/app_pages.dart';

import '../controllers/create_order_controller.dart';

class CreateOrderView extends GetView<CreateOrderController> {
  const CreateOrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          'Create order',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(
                      0, 0.5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        controller.product.image
                      )
                    )
                  ),
                ),
                const Gap(20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        controller.product.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                      const Gap(15),
                      Row(
                        children: [
                          Text(
                            'Quantity: ${controller.quantity}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '\$${controller.product.price * controller.quantity}',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: AppColors.primary
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Gap(20),
          const Text(
            'Address',
          ),
          const Gap(10),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Type your address ...',
              border: OutlineInputBorder()
            ),
          ),
          const Gap(20),

          const Text(
            'Note',
          ),
          const Gap(10),
          const TextField(
            maxLines: 3,
            decoration: InputDecoration(
                hintText: 'Some note for this order ...',
                border: OutlineInputBorder()
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              if (Platform.isIOS) {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return PaymentBottomSheet();
                  },
                );
              } else {
                Get.offAndToNamed(Routes.ORDER_SUCCESS);
              }
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(13)
              ),
              child: const Center(
                child: Text(
                    'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

class PaymentBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Set the desired height for the bottom sheet
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(15),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: SvgPicture.asset(
              Assets.icons.icApplePay,
              height: 25,
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.back();
              Get.offAndToNamed(Routes.ORDER_SUCCESS);
            },
            child: Container(
              height: 50,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Pay with Apple Pay',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}