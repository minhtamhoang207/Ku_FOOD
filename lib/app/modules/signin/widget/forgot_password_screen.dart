import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kufood/app/routes/app_pages.dart';

class NavigatorHome extends StatefulWidget {
  const NavigatorHome({Key? key}) : super(key: key);

  @override
  State<NavigatorHome> createState() => _NavigatorHomeState();
}

class _NavigatorHomeState extends State<NavigatorHome> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    init();
  }

  void init() async {
    Timer(Duration(seconds: 1), () {
      Get.offAllNamed(Routes.DASHBOARD);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
