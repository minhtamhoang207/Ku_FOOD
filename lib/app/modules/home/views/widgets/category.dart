import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kufood/app/modules/home/controllers/home_controller.dart';
import 'package:kufood/app/routes/app_pages.dart';

class CategoryList extends StatelessWidget {
  final HomeController homeController;
  const CategoryList({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: GestureDetector(
        child: ListView.separated(
          itemCount: homeController.listCategory.length,
          padding: const EdgeInsets.only(top: 16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                String title = "";
                switch (index) {
                  case 0:
                    title = "salad";
                    break;
                  case 1:
                    title = "pizza";
                    break;
                  case 2:
                    title = "burger";
                    break;
                  case 3:
                    title = "drink";
                    break;
                }
                Get.toNamed(Routes.LIST_ORDER, arguments: title);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
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
                      child: Center(
                        child: SvgPicture.asset(homeController.listIcon[index]),
                      ),
                    ),
                  ),
                  const Gap(12),
                  Text(
                    homeController.listCategory[index],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (_, __) => const Gap(16),
        ),
      ),
    );
  }
}
