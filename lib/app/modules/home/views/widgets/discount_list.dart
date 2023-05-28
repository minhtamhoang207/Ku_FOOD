import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kufood/app/config/colors.dart';

import '../../controllers/home_controller.dart';

class DiscountList extends StatelessWidget {
  final HomeController homeController;

  const DiscountList({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        itemCount: 5,
        padding: const EdgeInsets.only(top: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                  width: Get.width - 80,
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
                            border: Border.all(
                                width: 2, color: AppColors.primary)
                        ),
                      ),
                      const Gap(14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Fruit salad',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                            Gap(4),
                            Text(
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
                            Gap(4),
                            Expanded(
                              child: FittedBox(
                                child: Text(
                                  '\$ 14',
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Color(0xFFFF6B6B),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
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
                      bottomLeft: Radius.circular(24)
                    )
                  ),
                  child: const Text(
                    '-20%',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          );
        },
        separatorBuilder: (_, __) => const Gap(16),
      ),
    );
  }
}
