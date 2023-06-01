import 'dart:async';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:kufood/app/auth.dart';
import 'package:kufood/app/config/colors.dart';
import 'package:kufood/app/const.dart';
import 'package:kufood/app/constant.dart';
import 'package:kufood/app/data/cache_manager.dart';
import 'package:flutter/material.dart';
import 'package:kufood/app/modules/signin/widget/default_button.dart';
import 'package:kufood/app/modules/signin/widget/text_form_field.dart';

class ForgotPasswordGmailScreen extends StatefulWidget {
  const ForgotPasswordGmailScreen({Key? key, this.status}) : super(key: key);
  final String? status;
  @override
  State<ForgotPasswordGmailScreen> createState() =>
      _ForgotPasswordGmailScreenState();
}

enum AuthMode { login, register, forgotPass }

class _ForgotPasswordGmailScreenState extends State<ForgotPasswordGmailScreen> {
  var items = ['Viet Nam', 'English'];
  final CacheManager _cacheManager = CacheManager.instance;
  String dropdownvalue = 'Viet Nam';
  bool checked = false;
  String? errorMessage = '';
  bool register = false;
  String? error;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.status == "change_pass" ? "Đổi mật khẩu" : "Quyên mật khẩu",
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          elevation: 0,
          backgroundColor: kBgColor,
          automaticallyImplyLeading:
              widget.status == "change_pass" ? true : false,
        ),
        backgroundColor: kBgColor,
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                renderHeader(),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormFieldInput(
                        hinText: 'email',
                        isEmail: true,
                        error: error,
                        controller: emailController,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      DefaultButton(
                        size: size,
                        title: widget.status == "change_pass"
                            ? "Gửi đường dẫn đổi mật khẩu"
                            : "Gửi đường dẫn lấy lại mật khẩu",
                        press: () async {
                          if (_formKey.currentState!.validate()) {
                            await Auth().sendPasswordResetEmail(
                              email: emailController.text,
                            );
                            Fluttertoast.showToast(
                                msg: widget.status == "change_pass"
                                    ? "Gửi đường dẫn đổi mật khẩu thành công"
                                    : "Gửi đường dẫn lấy lại mật khẩu thành công");
                            Timer(Duration(seconds: 1), () {
                              Navigator.pop(context);
                            });
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      widget.status == "change_pass"
                          ? Container()
                          : Row(
                              children: [
                                const Text('Đã có tài khoản? ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey)),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(' Đăng nhập ngay',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: AppColors.primary,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ],
                            ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }

  Widget renderHeader() {
    return Container(
      height: 100,
      alignment: Alignment.center,
      child: Text(
        widget.status == "change_pass"
            ? "Gửi đường dẫn tới gmail để đổi mật khẩu"
            : "Gửi đường dẫn tới gmail để lấy lại mật khẩu",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 28, color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
