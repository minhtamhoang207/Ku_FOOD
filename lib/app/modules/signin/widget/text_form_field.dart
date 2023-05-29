import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldInput extends StatefulWidget {
  const TextFormFieldInput(
      {Key? key,
      required this.controller,
      required this.hinText,
      this.error,
      this.isPass,
      this.isUsername,
      this.isEmail,
      this.isPhone,
      this.type,
      this.isCheckPass,
      this.password,
      this.onChanged,
      this.enable,
      this.isHour,
      this.isMinute,
      this.onTap})
      : super();
  final TextEditingController controller;
  final String hinText;
  final String? error;
  final bool? isPass;
  final bool? isUsername;
  final bool? isEmail;
  final bool? isPhone;
  final bool? isCheckPass;
  final String? password;
  final TextInputType? type;
  final bool? enable;
  final Function()? onChanged;
  final Function()? onTap;
  final bool? isHour;
  final bool? isMinute;
  @override
  State<TextFormFieldInput> createState() => _TextFormFieldInputState();
}

class _TextFormFieldInputState extends State<TextFormFieldInput> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //initialValue: 'Phone Number',
      enabled: widget.enable,
      enableSuggestions: true,
      obscureText: widget.isPass == true && check == true ? true : false,
      //autovalidateMode: AutovalidateMode.always,
      autofillHints: const [AutofillHints.oneTimeCode],

      validator: (text) {
        if (widget.isCheckPass == true) {
          if (text != widget.password) {
            return "Xác nhận mật khẩu không đúng. Vui lòng thử lại";
          }
        }
        if (text!.isEmpty) {
          return "Vui lòng điền đầy đủ thông tin";
        }
        if (widget.isHour == true &&
            int.parse(text) < 0 &&
            int.parse(text) > 23) {
          return "null";
        }
        if (widget.isMinute == true &&
            int.parse(text) < 0 &&
            int.parse(text) > 59) {
          return "null";
        }
      },
      controller: widget.controller,
      onChanged: (value) {
        if (widget.onChanged != null) widget.onChanged!.call();
        if (widget.password != null) {}
        // widget.controller.value = TextEditingValue(
        //   text: value,
        //   selection: TextSelection.collapsed(offset: value.length),
        // );
      },

      decoration: InputDecoration(
        errorText: widget.error /*'Error message'*/,
        hintText: widget.hinText,
        focusColor: Color(0xFFFF644E),
        suffixIcon: widget.isPass == true
            ? InkWell(
                onTap: (() {
                  setState(() {
                    check = !check;
                  });
                }),
                child: Icon(
                  check ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                BorderSide(width: 1, color: Colors.grey /*color: primaryColor*/
                    )),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                BorderSide(width: 1, color: Colors.grey /*color: primaryColor*/
                    )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                width: 1,
                /*color: primaryColor*/
                color: Colors.grey)),
        contentPadding:
            EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      keyboardType: widget.type,
    );
  }
}
