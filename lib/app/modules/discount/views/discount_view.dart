import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:kufood/app/config/colors.dart';
import 'package:kufood/app/routes/app_pages.dart';

import '../controllers/discount_controller.dart';

class DiscountView extends GetView<DiscountController> {
  const DiscountView({Key? key}) : super(key: key);
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
          const Text(
            'Discount',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const Gap(40),
          SizedBox(
            height: 40,
            child: ListView.separated(
              itemCount: controller.listTab.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Obx(() => InkWell(
                      onTap: () {
                        controller.currentTab.value = index;
                        controller.onSelect(index);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: index == controller.currentTab.value
                                ? AppColors.primary
                                : Colors.white),
                        child: Text(
                          controller.listTab[index],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: index == controller.currentTab.value
                                  ? Colors.white
                                  : const Color(0xFF848484)),
                        ),
                      ),
                    ));
              },
              separatorBuilder: (_, __) => const Gap(12),
            ),
          ),
          const Gap(14),
          Obx(
            () => Column(
              children: [
                ...List.generate(controller.listProduct.value.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.FOOD_DETAIL,
                                arguments: controller.listProduct.value[index]);
                          },
                          child: Container(
                              width: Get.width,
                              height: 130,
                              margin: const EdgeInsets.all(3),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 22),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.white,
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
                                    height: 86,
                                    width: 86,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                              controller.listProduct
                                                  .value[index].image),
                                          fit: BoxFit.cover,
                                        ),
                                        border: Border.all(
                                            width: 2,
                                            color: AppColors.primary)),
                                  ),
                                  const Gap(14),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          controller
                                              .listProduct.value[index].name,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Gap(4),
                                        const Text(
                                          '2 km - 10 min delivery',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xFFA0A2A3),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Gap(4),
                                        Text(
                                          '\$ ${controller.listProduct.value[index].price}',
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          style: TextStyle(
                                              color: Color(0xFFFF6B6B),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                                color: Color(0xFFFF6B6B),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(24),
                                    bottomLeft: Radius.circular(24))),
                            child: const Text(
                              '-20%',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                })
              ],
            ),
          )
        ],
      ),
    ));
  }
}
