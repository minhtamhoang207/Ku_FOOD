import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:kufood/app/config/assets.gen.dart';
import 'package:kufood/app/config/colors.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

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
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: Column(
        children: [
          const Gap(50),
          const Text(
            'Personal account',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const Gap(40),
          Expanded(
            child: Container(
                width: Get.width,
                padding: const EdgeInsets.all(29),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
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
                              child: Icon(Icons.camera_alt),
                            ),
                          )
                        ],
                      ),
                      const Gap(13),
                      const Text(
                        'Hoang Anh Minh',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                      const Gap(52),
                      _menu(),
                      Divider(height: 42, color: Colors.black.withOpacity(0.8)),
                      Row(
                        children: const [
                          Icon(Icons.info_outline, color: Color(0xFFA0A2A3)),
                          Gap(19),
                          Expanded(
                            child: Text(
                              'Personal information',
                              style: TextStyle(
                                  color: Color(0xFF4F4F4F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      const Gap(32),
                      Row(
                        children: const [
                          Icon(Icons.settings, color: Color(0xFFA0A2A3)),
                          Gap(19),
                          Expanded(
                            child: Text(
                              'Setting',
                              style: TextStyle(
                                  color: Color(0xFF4F4F4F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      const Gap(32),
                      Row(
                        children: [
                          SvgPicture.asset(Assets.icons.icChangePassword),
                          const Gap(19),
                          const Expanded(
                            child: Text(
                              'Change Password',
                              style: TextStyle(
                                  color: Color(0xFF4F4F4F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      const Gap(32),
                      GestureDetector(
                        onTap: () {
                          controller.logout();
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.login_outlined,
                                size: 24, color: Colors.grey //Color(0xff0A2A3),
                                ),
                            Gap(19),
                            Expanded(
                              child: Text(
                                'Log out',
                                style: TextStyle(
                                    color: Color(0xFF4F4F4F),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Gap(32),
                      GestureDetector(
                        onTap: () {
                          controller.deleteAccount();
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.cancel_outlined,
                                size: 26, color: Colors.grey //Color(0xff0A2A3),
                                ),
                            Gap(19),
                            Expanded(
                              child: Text(
                                'Delete account',
                                style: TextStyle(
                                    color: Color(0xFF4F4F4F),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    ));
  }

  Widget _menu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF8BC53F),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(Assets.icons.icAll)),
            const Gap(9),
            const Text(
              'All',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ],
        ),
        Column(
          children: [
            Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFA502),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(Assets.icons.icOrder)),
            const Gap(9),
            const Text(
              'Order',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ],
        ),
        Column(
          children: [
            Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF6FCF97),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(
                  Assets.icons.icShipping,
                )),
            const Gap(9),
            const Text(
              'Shiping',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ],
        )
      ],
    );
  }
}
