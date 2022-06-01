import 'package:flutter/material.dart';
import 'package:auth_screens/routes/routes.dart';
import 'package:auth_screens/widgets/custom_form_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  "Hey there!",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Welcome back, Please use your mobile number and password to log in!",
                  style: TextStyle(color: Color.fromARGB(255, 198, 193, 220)),
                ),
                const SizedBox(
                  height: 80,
                ),
                CustomFormField(
                    textInputType: TextInputType.phone,
                    isObscure: false,
                    hintText: "Mobile Number"),
                const SizedBox(
                  height: 10,
                ),
                CustomFormField(
                    textInputType: TextInputType.text,
                    isObscure: true,
                    hintText: "Password"),
                const SizedBox(
                  height: 5.0,
                ),
                _forgotPassword(context),
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(170, 45),
                            primary: const Color(0xffE7704C),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      const Text(
                        "Don't have an account yet?",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, Routes.signup),
                        child: const Text(
                          "Create an account",
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

  Row _forgotPassword(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, Routes.forgotPassword),
          child: const Text(
            "Forgot Password?",
            textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: 14.0,
                color: Color(0xffE7704C),
                fontWeight: FontWeight.w400),
          ),
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
