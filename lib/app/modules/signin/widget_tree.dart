import 'package:kufood/app/auth.dart';
import 'package:kufood/app/data/cache_manager.dart';
import 'package:kufood/app/modules/signin/signin_screen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kufood/app/modules/signin/widget/forgot_password_screen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  final CacheManager _cacheManager = CacheManager.instance;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, AsyncSnapshot<User?> snapshot) {
        // print(snapshot.data?.uid.toString());
        print(snapshot);
        var data = snapshot.data;
        if (snapshot.hasData) {
          return const NavigatorHome();
        } else {
          return const SigninScreen();
        }
      },
    );
  }
}
