import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'pages/home_page.dart';
import 'pages/login.dart';
import 'pages/register_page.dart';
import 'pages/splash_page _home.dart';
import 'pages/splash_page _login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print("Snapshort:::::::::::${snapshot.data?.uid}");
            return SplashPageHome();
          } else {
            //  return const RegisterPage(title: 'Police Report Sign Up');
            return SplashPageLogin();
          }
        },
      ),
      routes: {
        '/login_page/': (context) => const LoginPage(),
        '/register_page/': (context) => const RegisterPage(),
        '/home_page/': (context) => const MyHomePage(),
      },
    );
  }
}
