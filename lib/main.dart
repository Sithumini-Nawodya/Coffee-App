import 'package:coffee_app/home_page.dart';
import 'package:coffee_app/login_page.dart';
import 'package:coffee_app/main_page.dart';
import 'package:coffee_app/sign_up.dart';
import 'package:coffee_app/splashScreen.dart';
import 'package:coffee_app/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF212325),
        fontFamily: 'Rosarivo',
        useMaterial3: true,
      ),
     home: SplashScreen(),


    );
  }
}

