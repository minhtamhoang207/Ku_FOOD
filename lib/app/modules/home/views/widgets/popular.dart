import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kufood/app/config/colors.dart';
import 'package:kufood/app/routes/app_pages.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        itemCount: 3,
        padding: const EdgeInsets.only(top: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(Routes.FOOD_DETAIL);
            },
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 3),
                  height: 200,
                  width: Get.width / 2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0,0.5), // changes position of shadow
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
                            height: 106,
                            width: 106,
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg'
                                    )
                                )
                            ),
                          ),
                        ),
                        const Gap(12),
                        const Text(
                          'Fruit salad',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        const Gap(12),
                        const Text(
                          '\$ 14',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(
                              color: Color(0xFFFF6B6B),
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),
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
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        const Gap(12)
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (_, __) => const Gap(16),
      ),
    );
  }
}
