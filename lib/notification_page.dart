import 'package:coffee_app/coffee.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 21, 32, 1),
      body: Column(
          children: [
      Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Center(
        child: Text(
          'Notifications',
          style: TextStyle(color: Colors.white,fontSize: 24,),
        ),
      ),
    ),
    ]
    ),
    );
  }
}
