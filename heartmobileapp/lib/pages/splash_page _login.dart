import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class SplashPageLogin extends StatefulWidget {
  SplashPageLogin({Key? key}) : super(key: key);

  @override
  _SplashPageLoginState createState() => _SplashPageLoginState();
}

class _SplashPageLoginState extends State<SplashPageLogin> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/logo.png'),
      title: const Text(
        "Heart Failure Detection",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      showLoader: true,
      loadingText: const Text("Loading..."),
      navigator: const LoginPage(),
      durationInSeconds: 5,
    );
  }
}
