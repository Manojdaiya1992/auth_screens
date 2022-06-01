import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  TextInputType? textInputType;
  bool isObscure = false;
  String? hintText;
  CustomFormField(
      {Key? key,
      @required this.textInputType,
      required this.isObscure,
      @required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: isObscure,
      cursorColor: Colors.black45,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black26),
        filled: true,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    );
  }
}
