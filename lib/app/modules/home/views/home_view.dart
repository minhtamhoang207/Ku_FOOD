import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kufood/app/config/assets.gen.dart';
import 'package:kufood/app/config/colors.dart';
import 'package:kufood/app/modules/home/views/widgets/discount_list.dart';
import 'package:kufood/app/modules/home/views/widgets/popular.dart';
import 'package:kufood/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import 'widgets/category.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundColor: AppColors.primary,
              ),
            ),
          ),
          centerTitle: false,
          title: const Text(
            'Hi, Minh',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black),
          ),
          actions: [
            SizedBox(
              width: Get.width / 2 - 20,
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.icLocation),
                  const Gap(15),
                  const Expanded(
                    child: Text(
                      'Cau Giay, Ha Noi',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF848484)),
                    ),
                  ),
                  const Gap(16)
                ],
              ),
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
              height: 152,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Assets.images.imgHome.path))),
            ),
            const Gap(18),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Popular food',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                const Gap(20),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppColors.primary),
                ),
              ],
            ),
            const PopularList(),
            const Gap(32),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Category',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                const Gap(20),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppColors.primary),
                ),
              ],
            ),
            CategoryList(homeController: controller),
            const Gap(32),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Discount food',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                const Gap(20),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppColors.primary),
                ),
              ],
            ),
            DiscountList(homeController: controller),
            const Gap(32),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Drink food',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                const Gap(20),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppColors.primary),
                ),
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16),
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 220 / 280,
              children: List.generate(6, (index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.FOOD_DETAIL);
                  },
                  child: SizedBox(
                      height: 220,
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 50, bottom: 3),
                            height: 220,
                            width: Get.width / 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
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
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 124,
                                      width: 124,
                                      decoration: BoxDecoration(
                                          color: AppColors.primary,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: AppColors.primary, width: 2),
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg'))),
                                    ),
                                  ),
                                  const Gap(12),
                                  const Text(
                                    'Fruit salad',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  const Gap(12),
                                  const Text(
                                    '\$ 14',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: Color(0xFFFF6B6B),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Gap(12),
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
                                  const Gap(12)
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                );
              }),
            ),
            const Gap(32),
          ],
        ));
  }
}
