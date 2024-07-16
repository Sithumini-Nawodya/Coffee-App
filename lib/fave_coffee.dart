import 'package:flutter/material.dart';

class FaveCoffee extends StatefulWidget {
  final String imageUrl;
  final String coffeeType;
  final String coffeeName;
  final String coffeePrice;
  const FaveCoffee(
      {super.key,
        required this.imageUrl,
        required this.coffeeType,
        required this.coffeeName,
        required this.coffeePrice,});


  @override
  State<FaveCoffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<FaveCoffee> {
  int count =10;
  void decrease() {
    setState(() {
      count--;
    });
  }

  void increase() {
    setState(() {
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        height: 100,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(54, 44, 54, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(widget.imageUrl),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.coffeeType,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(widget.coffeeName,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(widget.coffeePrice,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Icon(Icons.favorite,
                   color: Color.fromRGBO(201, 76, 76, 1),
                   size: 35,),

                  ],
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
