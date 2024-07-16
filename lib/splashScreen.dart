import 'package:coffee_app/home_page.dart';
import 'package:coffee_app/welcome_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    navigateToLoginScreen(context);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(32, 21, 32, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Color.fromRGBO(243, 202, 147, 1),
            radius: 130,
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(243, 202, 147, 1),
              radius: 120,
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/coffeeold.png'),
                radius: 150,

              ),
            ),
          ),

        ],
      ),
    );
  }

  void navigateToLoginScreen(BuildContext context)
  {
    Future.delayed(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage()));
    });

  }
}

