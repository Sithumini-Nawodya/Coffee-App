
import 'package:coffee_app/fave_coffee.dart';
import 'package:flutter/material.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

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
          'Favourite',
          style: TextStyle(color: Colors.white,fontSize: 24,),
        ),
      ),
    ),
            FaveCoffee(
            imageUrl: 'assets/coffee9.png',
            coffeeType: 'Cappuccino',
            coffeeName: 'Bursting Blueberry',
            coffeePrice: 'Rs.100',
            ),
            FaveCoffee(
            imageUrl: 'assets/coffee3.png',
            coffeeType: 'Cappuccino',
            coffeeName: 'Cinnamon & Cocoa',
            coffeePrice: 'Rs.100',
            ),
            FaveCoffee(
            imageUrl: 'assets/coffee6.png',
            coffeeType: 'Coffee Late',
            coffeeName: 'Pumpkin Spice Latte',
            coffeePrice: 'Rs.100',
            ),

    ]
    ),
    );
  }
}
