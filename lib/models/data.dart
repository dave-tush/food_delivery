import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/food_category.dart';
import 'package:food_delivery/models/order.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/models/user.dart';

final foodsCategories = [
  FoodCategory(name: 'African', food: [
    'Abacha',
    'egusi',
  ], imageUrl: [
    'assets/images/food/abacha.jpg',
    'assets/images/food/egusi.jpg'
  ]),
  FoodCategory(name: 'fastFood', food: [
    'barbecue',
    'burger',
    'chocolate cake',
    'pizza',
  ], imageUrl: [
    'assets/images/food/barbecue.jpeg',
    'assets/images/food/burger.jpg',
    'assets/images/food/chocolate-cake.jpeg',
    'assets/images/food/pizza.jpg',
  ]),
  FoodCategory(name: 'italian', food: [
    'pancakes',
    'spaghetti',
    'steak',
    'veg soup',
    'pasta',
  ], imageUrl: [
    'assets/images/food/pancakes.jpg',
    'assets/images/food/spaghetti.jpeg',
    'assets/images/food/steak.jpg',
    'assets/images/food/veg-soup.jpeg',
    'assets/images/food/pasta.jpg',
  ]),
  FoodCategory(name: 'Snacks', food: [
    'burger-1-3',
    'juice',
    'coke',
    'pepsi',
    'cookies',
  ], imageUrl: [
    'assets/images/burger-1-2.jpg',
    'assets/images/juice.png',
    'assets/images/coke.png',
    'assets/images/pepsi.png',
    'assets/images/cookies.png',
  ]),
];
final restaurant1 = Restaurant(
  name: 'Alata ',
  imageUrl: 'assets/images/restaurant/restaurant1.jpg',
  address: '23a Excel road, ogba',
  distance: '50km',
  //ratingStar: 5,
  // star: Text(''),
);
final restaurant2 = Restaurant(
  name: 'DigiChops',
  imageUrl: '',
  address: '30, egbe road lagos ',
  distance: '30km',
);
final restaurant3 = Restaurant(
    name: 'Lagos Kitchen',
    imageUrl: '',
    address: '12 kolawole street, under-G',
    distance: '90km');
final List foods = [
  Food(
    price: '\$ 50',
    imageUrl: 'assets/images/food/burger.jpg',
    name: 'Burger',
  ),
  Food(
    price: '\$30',
    imageUrl: 'assets/images/food/pasta.jpg',
    name: 'pasta',
  ),
];
final currentUser = User(name: 'David', cart: [
  Order(
    food: foods[1],
    restaurant: restaurant1,
    date: '',
    quantity: 2,
  ),
], orders: [
  Order(
    food: foods[1],
    restaurant: restaurant1,
    date: '',
    quantity: 2,
  ),
]);
