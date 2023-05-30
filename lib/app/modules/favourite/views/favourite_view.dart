import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:kufood/app/config/assets.gen.dart';
import 'package:kufood/app/routes/app_pages.dart';

import '../../../config/colors.dart';
import '../controllers/favourite_controller.dart';

class FavouriteView extends GetView<FavouriteController> {
  const FavouriteView({Key? key}) : super(key: key);

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
      child: Obx(
        () => ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            const Gap(50),
            const Text(
              'Favorite food',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            const Gap(40),
            ...List.generate(controller.listProduct.value.length, (index) {
              return Obx(
                () => GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.FOOD_DETAIL,
                        arguments: controller.listProduct.value[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
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
                                    image: CachedNetworkImageProvider(controller
                                        .listProduct.value[index].image),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                      width: 2, color: AppColors.primary)),
                            ),
                            const Gap(14),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.listProduct.value[index].name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  const Gap(4),
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
                                  const Gap(4),
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
                            ),
                            const Gap(14),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2, color: AppColors.primary)),
                              child: SvgPicture.asset(
                                Assets.icons.icHeart,
                                color: AppColors.primary,
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    ));
  }
}
