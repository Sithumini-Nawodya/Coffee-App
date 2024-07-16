import 'package:flutter/material.dart';

class Coffee extends StatefulWidget {
  final String imageUrl;
  final String coffeeType;
  final String coffeeName;
  final String coffeePrice;
  const Coffee(
  {super.key,
    required this.imageUrl,
    required this.coffeeType,
    required this.coffeeName,
    required this.coffeePrice,});


  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
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
                decoration: BoxDecoration(
                  color: Color.fromARGB(46, 158, 158, 158),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(239, 227, 200, 1),
                      ),
                      child: IconButton(
                        onPressed: decrease,
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.remove,
                          color: Color.fromRGBO(32, 21, 32, 1),
                          size: 30,
                        ),
                      ),
                    ),
                    Text('$count',style: TextStyle(color: Colors.white,fontSize: 24,
                    ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(239, 227, 200, 1),
                      ),
                      child: IconButton(
                        onPressed: increase,
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.add_rounded,
                          color: Color.fromRGBO(32, 21, 32, 1),
                          size: 30,
                        ),
                      ),
                    ),
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
