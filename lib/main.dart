import 'package:coffee_shop_app/screens/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black87),
      home: SplashScreen(),
    ),
  );
}
