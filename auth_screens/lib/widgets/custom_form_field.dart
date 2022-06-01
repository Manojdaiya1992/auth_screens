import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final TextInputType? textInputType;
  final bool isObscure;
  final String? hintText;
  const CustomFormField(
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
      cursorColor: Colors.grey.shade600,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black26),
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        border: textFieldBorder(),
        enabledBorder: textFieldBorder(),
        focusedBorder: textFieldBorder(),
      ),
    );
  }
}

OutlineInputBorder textFieldBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
  );
}
