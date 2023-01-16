import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/HomePages/home_page_1.dart';
import 'package:food_delivery/Pages/HomePages/home_page_2.dart';
import 'package:food_delivery/Pages/HomePages/home_page_3.dart';
import 'package:food_delivery/Pages/scroll_behaviour.dart';
import 'package:food_delivery/widgets/colors.dart';
import 'package:food_delivery/widgets/navbar.dart';

import 'home_page_4.dart';

class MyHomePage extends StatefulWidget {
  final screens = [
    HomePage1(),
     HomePage2(),
    const HomePage4(),
    HomePage3(),
  ];
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: ColorsToBeUsed().placeHolderColor,
            ),
            label: 'Restaurants',
            backgroundColor: Colors.pink,
            activeIcon:
                Icon(Icons.home_filled, color: ColorsToBeUsed().primaryColor),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded,
                color: ColorsToBeUsed().placeHolderColor),
            label: 'Offers',
            backgroundColor: Colors.red,
            activeIcon: Icon(
              Icons.explore_rounded,
              color: ColorsToBeUsed().primaryColor,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_sharp,
                  color: ColorsToBeUsed().placeHolderColor),
              label: 'Account',
              backgroundColor: Colors.red,
              activeIcon: Icon(Icons.shopping_cart_sharp,
                  color: ColorsToBeUsed().primaryColor)),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.person, color: ColorsToBeUsed().placeHolderColor),
              label: 'Addition',
              backgroundColor: Colors.red,
              activeIcon:
                  Icon(Icons.person, color: ColorsToBeUsed().primaryColor)),
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: ScrollConfiguration(
        behavior: NoGlowBehaviour(),
        child: widget.screens[currentIndex],
      ),
    );
  }
}
