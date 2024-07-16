import 'package:coffee_app/choose_milk.dart';
import 'package:flutter/material.dart';

class CoffeeDetails extends StatefulWidget {
  final String coffeeName;
  final String price;
  final String imageUrl;
  const CoffeeDetails({super.key, required this.coffeeName, required this.price, required this.imageUrl});


  @override
  State<CoffeeDetails> createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  @override
  Widget build(BuildContext context) {
    final List<String> milkType = [
      'Oat Milk',
      'Soy Milk',
      'Almond Milk',
      'Skimmed Milk',
      'Semi Skimmed',
      'Lactose-Free Milk',
    ];
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(32, 21, 32, 1),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(55),
                      child: Image(image: AssetImage(widget.imageUrl),),
                    ),
                    Positioned(
                      left: 20,
                        top: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(146, 108, 108, 108),
                          ),
                          child: IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Cappuccino',
                        style: TextStyle(color: Colors.white,fontSize: 24),

                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Color.fromRGBO(201, 76, 76, 1),
                      size: 35,
                    )
                  ],
                ),
                Padding(
                    padding:  const EdgeInsets.only(top: 10.0),
                  child: Text(
                    widget.coffeeName,
                    style: TextStyle(
                      color: Colors.white, fontSize: 16
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'This is an Italian coffee drink that is traditionally prepared with equal parts double espresso, steamed milk, and steamed milk foam on top.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            widget.price,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        width: 250,
                        child: ElevatedButton(style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 227, 200, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                          child: Text(
                            'BUY NOW',
                            style: TextStyle(
                              color: Color.fromRGBO(32, 21, 32, 1),
                              fontSize: 15,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: (){},
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
