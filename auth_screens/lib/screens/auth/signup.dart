import 'package:flutter/material.dart';
import 'package:auth_screens/routes/routes.dart';
import 'package:auth_screens/widgets/custom_form_field.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create your account",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomFormField(
                    textInputType: TextInputType.name,
                    isObscure: false,
                    hintText: "First name"),
                const SizedBox(
                  height: 20.0,
                ),
                CustomFormField(
                    textInputType: TextInputType.name,
                    isObscure: false,
                    hintText: "Last name"),
                const SizedBox(
                  height: 20.0,
                ),
                CustomFormField(
                    textInputType: TextInputType.phone,
                    isObscure: false,
                    hintText: "Phone number"),
                const SizedBox(
                  height: 10,
                ),
                CustomFormField(
                    textInputType: TextInputType.text,
                    isObscure: true,
                    hintText: "Password"),
                const SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(170, 45),
                          primary: const Color(0xffE7704C),
                        ),
                        child: const Text(
                          "Signup",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                              fontSize: 15.0),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, Routes.login),
                        child: const Text(
                          "Sign into your account",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _forgotPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Text(
          "Forgot Password?",
          textAlign: TextAlign.right,
          style: TextStyle(
              fontSize: 14.0,
              color: Color(0xffE7704C),
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  TextFormField _formField(
      String? hintText, bool isObscure, TextInputType textInputType) {
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
