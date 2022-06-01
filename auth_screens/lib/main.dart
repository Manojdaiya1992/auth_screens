import 'package:auth_screens/routes/routes.dart';
import 'package:auth_screens/screens/auth/forgot_password.dart';
import 'package:auth_screens/screens/auth/login.dart';
import 'package:auth_screens/screens/auth/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          Routes.login: (context) => const Login(),
          Routes.signup: (context) => const Signup(),
          Routes.forgotPassword: ((context) => const ForgotPassword())
        });
  }
}
