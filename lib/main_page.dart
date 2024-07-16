import 'package:coffee_app/cart_page.dart';
import 'package:coffee_app/fav_page.dart';
import 'package:coffee_app/home_page.dart';
import 'package:coffee_app/notification_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [
    HomePage(),
    CartPage(),
    FavPage(),
    NotificationPage(),
  ];

  void onTap(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: pages[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onTap,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromRGBO(34, 21, 31, 1),
            selectedItemColor: Color.fromRGBO(239, 227, 200, 1),
            unselectedItemColor: Color.fromRGBO(135, 124, 116, 1),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.house_rounded,
                    size: 35,
              ),
                label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    size: 35,
                  ),
                  label: 'Cart',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    size: 35,
                  ),
                  label: 'Fav'
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications_active,
                    size: 35,
                  ),
                  label: 'Notification'
              ),
            ],
          ),
        ));
  }
}
