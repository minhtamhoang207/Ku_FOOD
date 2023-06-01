import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:kufood/app/config/colors.dart';
import 'package:kufood/app/routes/app_pages.dart';

import '../../../config/assets.gen.dart';
import '../controllers/food_detail_controller.dart';

class FoodDetailView extends GetView<FoodDetailController> {
  const FoodDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Stack(
            children: [
              Obx(
                () => Container(
                  height: Get.height * 0.4,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(
                              0, 0.5), // changes position of shadow
                        ),
                      ],
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(controller.product.value?.image ??
                              'https://img.freepik.com/free-photo/fast-food-junk-food-concept_1339-1420.jpg?w=2000'))),
                ),
              ),
              Positioned(
                  top: 50,
                  left: 10,
                  child: GestureDetector(
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
                  ))
            ],
          ),
          const Gap(12),
          Row(
            children: [
              const Gap(16),
              Icon(Icons.location_on_outlined, color: AppColors.primary),
              const Gap(7.5),
              const Expanded(
                child: Text(
                  '2 km - 10 min delivery',
                  style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              )
            ],
          ),
          const Gap(26),
          Row(
            children: [
              const Gap(16),
              Expanded(
                child: Obx(
                  () => Text(
                    controller.product.value?.name ?? "",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Gap(16),
              Obx(
                () => GestureDetector(
                  onTap: () {
                    controller.setStatus();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.grey)),
                    child: SvgPicture.asset(Assets.icons.icHeart,
                        color: controller.statusSelect.value
                            ? AppColors.primary
                            : Colors.grey),
                  ),
                ),
              ),
              const Gap(16)
            ],
          ),
          Gap(12),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                children: [
                  AbsorbPointer(
                    absorbing: true,
                    child: RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 3),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 3, left: 10),
                      child: Text('5.0'),
                    ),
                  )
                ],
              )),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Description',
              style: TextStyle(
                  color: Color(0xFF4F4F4F),
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Obx(
              () => Text(
                controller.product.value?.name ??
                    'The BEST Fruit Salad with a sweet and bright honey lime dressing! It’s an incredibly refreshing, must have side dish that’s made with beautiful blend of delicious fruits and a simple dressing to compliment it. This is always sure to be a crowd favorite!',
                style: const TextStyle(
                    color: Color(0xFF4F4F4F),
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: FittedBox(
                        alignment: Alignment.centerLeft,
                        child: Obx(() => Text(
                              '\$ ${controller.product.value?.price ?? 0 * controller.count.value}',
                              maxLines: 1,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Color(0xFFFF6B6B)),
                            ))),
                  ),
                ),
                const Gap(20),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.decreaseQuantity();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey)),
                        child: const Icon(CupertinoIcons.minus),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Obx(() => Text(
                              controller.count.value.toString(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ))),
                    GestureDetector(
                      onTap: () {
                        controller.increaseQuantity();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey)),
                        child:
                            Icon(CupertinoIcons.add, color: AppColors.primary),
                      ),
                    )
                  ],
                ))
              ],
            ),
            const Gap(24),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.CREATE_ORDER, arguments: {
                  'product': controller.product.value,
                  'quantity': controller.count.value
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(25.5)),
                child: const Center(
                  child: Text(
                    'Order',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
