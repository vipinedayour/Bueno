import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mega_mind/screens/choose.dart';
import 'package:mega_mind/screens/p_home.dart';
import 'package:mega_mind/screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        curve: Curves.easeInCirc,
        splashIconSize: 250,
        centered: true,
        duration: 2500,
        splashTransition: SplashTransition.fadeTransition,
        splash: 'images/logo.jpg',
        nextScreen: SignUp(),
      ),
    );
  }
}
