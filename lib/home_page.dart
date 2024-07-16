import 'package:coffee_app/coffee_details.dart';
import 'package:coffee_app/coffee_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> coffeeName=const[
    'Drizzled with Caramel',
    'Cinnamon & Cocoa',
    'Bursting Blueberry',
    'Dalgona Whipped Macha',
    'Pumpkin Spice Latte',
    'Frappuccinp',
  ];
  final List<String> imageUrl=const[
    'assets/coffee2.png',
    'assets/coffee3.png',
    'assets/coffee9.png',
    'assets/coffee11.png',
    'assets/coffee6.png',
    'assets/coffee12.png',
  ];
  final List<String> price=const[
    'LKR.70',
    'LKR.80',
    'LKR.100',
    'LKR.110',
    'LKR.120',
    'LKR.120',
  ];
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(32, 21, 32, 1),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cafe',
                          style: TextStyle(
                            height: 1,
                            color: Color.fromRGBO(135, 124, 116, 1),
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Madu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        )
                      ],),
                    CircleAvatar(
                      backgroundColor: Color.fromRGBO(243, 202, 147, 1),
                      radius: 32,
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(243, 202, 147, 1),
                        radius: 60,
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(243, 202, 147, 1),
                          backgroundImage:
                          const AssetImage('assets/coffeeold.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 25.0,
                    right: 25.0,
                  ),
                child: TextField(
                  style: TextStyle(
                    color: Color.fromRGBO(135, 124, 116, 1),
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(23, 16, 23, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(135, 124, 116, 1),
                    size: 30,
                  ),
                    hintText: 'Brows your favourite coffee',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(135, 124, 116, 1),fontSize: 20,
                    )
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: screenHeight / 1.283,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(112, 67, 65, 0.3),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                            ),
                          ),
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 3.0),
                                  child: Text(
                                      'Flat White',
                                    style: TextStyle(
                                      color: Color.fromRGBO(135, 124, 116, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Espresso',
                                  style: TextStyle(
                                    color: Color.fromRGBO(135, 124, 116, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Americano',
                                  style: TextStyle(
                                    color: Color.fromRGBO(135, 124, 116, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Latte',
                                  style: TextStyle(
                                    color: Color.fromRGBO(135, 124, 116, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Cappuccino',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: coffeeName.length,
                          gridDelegate:
                         const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 200/300,
                            crossAxisCount: 2,
                          ),
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => CoffeeDetails(
                                    coffeeName: coffeeName[index] ,
                                    price: price[index],
                                    imageUrl: imageUrl[index],
                                  ),
                                  ),
                                );
                              },
                              child: CoffeeList(
                                imageUrl: imageUrl[index], coffeeName: coffeeName[index], price: price[index],
                              ),
                            );
                          })),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
