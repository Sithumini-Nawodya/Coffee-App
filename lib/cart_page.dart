import 'package:coffee_app/coffee.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
                  'Cart',
                  style: TextStyle(color: Colors.white,fontSize: 24,),
                ),
              ),
            ),
            Coffee(
              imageUrl: 'assets/coffee9.png',
              coffeeType: 'Cappuccino',
              coffeeName: 'Bursting Blueberry',
              coffeePrice: 'Rs.100',
            ),
            Coffee(
              imageUrl: 'assets/coffee3.png',
              coffeeType: 'Cappuccino',
              coffeeName: 'Cinnamon & Cocoa',
              coffeePrice: 'Rs.100',
            ),
            Coffee(
              imageUrl: 'assets/coffee6.png',
              coffeeType: 'Coffee Late',
              coffeeName: 'Pumpkin Spice Latte',
              coffeePrice: 'Rs.100',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color.fromRGBO(54, 44, 54, 1),
                      width: 2.0
                    ),
                    bottom: BorderSide(
                      color: Color.fromRGBO(54, 44, 54, 1),
                    ),
                  ),
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(color: Color.fromRGBO(112, 65, 67, 1),borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Apply Coupon Code',style: TextStyle(
                            color: Color.fromRGBO(239, 227, 200, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color.fromRGBO(239, 227, 200, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: SizedBox(
                      height: 45,
                      width: 400,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 227, 200, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                        child: Text(
                          'PAY NOW',
                            style: TextStyle(
                              color: Color.fromRGBO(32, 21, 32, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                        ),
                      ),
                    ),
                  )
                ],),
              ),
            )
          ],
        ),
      );

  }
}
