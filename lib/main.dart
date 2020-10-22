import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chatcam/screens/auth/login.dart';
import 'package:chatcam/utils/constantes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: RED,
        fontFamily: 'Poppins',
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
        splash: Container(
            height:100,
            child: Image.asset("assets/images/love.png")),
        nextScreen: Login(),
        centered: true,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: RED,
        splashIconSize: 50,
      ),
    );
  }
}