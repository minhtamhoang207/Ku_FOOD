import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigator_controller.dart';

class NavigatorView extends GetView<NavigatorController> {
  const NavigatorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
