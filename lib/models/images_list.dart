import 'package:flutter/material.dart';

class listOfItems {
  var imageLists = '';
  var restaurantLists = '';
  var price = '';

   List imageList = [
    const AssetImage('assets/images/burger-1.png'),
    const AssetImage('assets/images/burger-2.png'),
    const AssetImage('assets/images/burger-1.png'),
    const AssetImage('assets/images/burger-2.png'),
    const AssetImage('assets/images/burger-1.png'),
    const AssetImage('assets/images/burger-2.png'),
    const AssetImage('assets/images/burger-1.png'),
  ];
  final  List restaurantList = [
    'NewRestaurant 1',
    'NewRestaurant 2',
    'NewRestaurant 3',
    'NewRestaurant 4',
    'NewRestaurant 5',
    'NewRestaurant 6',
    'NewRestaurant 7',

  ];
  final List prices = [
    '\$10.00',
    '\$20.00',
    '\$99.00',
    '\$40.00',
    '\$5.00',
    '\$12.00',
    '\$50.00',
  ];
}