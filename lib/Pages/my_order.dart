import 'package:flutter/material.dart';
import 'package:food_delivery/models/burger_models.dart';

import '../models/images_list.dart';

class MyOrders extends StatefulWidget {
  final newListOfItems = listOfItems();
 // BurgerModel newBurger = BurgerModel();
  MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    var MediaQuerySizeOfWidth = MediaQuery.of(context).size.width;
    var MediaQuerySizeOfHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuerySizeOfHeight * 0.01,
                vertical: MediaQuerySizeOfHeight * 0.01),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_ios_new_sharp),
                    ),
                    SizedBox(
                      width: MediaQuerySizeOfHeight * 0.11,
                    ),
                    Text(
                      'My Order',
                      style: TextStyle(
                          fontSize: MediaQuerySizeOfHeight * 0.03),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuerySizeOfHeight * 0.025,
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuerySizeOfHeight * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          fit: BoxFit.fitHeight,
                          height: MediaQuerySizeOfHeight * 0.12,
                          image: widget.newListOfItems.imageList[2],
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding:  EdgeInsets.only(left: MediaQuerySizeOfHeight * 0.01),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Really cool burger',
                                  style: TextStyle(
                                    fontSize:
                                    MediaQuerySizeOfHeight *
                                            0.025,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                  MediaQuerySizeOfHeight * 0.007,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Cafe:',
                                      style: TextStyle(
                                          fontSize: MediaQuerySizeOfHeight *
                                              0.015),
                                    ),
                                    SizedBox(
                                      width:
                                      MediaQuerySizeOfHeight *
                                              0.01,
                                    ),
                                    Text(
                                      'WinderFood',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.01,
                                    ),
                                    Text(
                                      '\$50',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03),
                                    ),
                                    SizedBox(
                                      width: MediaQuerySizeOfWidth *
                                          0.01,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                  MediaQuerySizeOfWidth * 0.01,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Theme.of(context).primaryColor,
                                      size: 17.0,
                                    ),
                                    Text(
                                      '4.9',
                                      style: TextStyle(
                                          fontSize: MediaQuerySizeOfHeight *
                                              0.015),
                                    ),
                                    SizedBox(
                                      width: MediaQuerySizeOfWidth *
                                          0.01,
                                    ),
                                    Text(
                                      '129 Messages',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: MediaQuerySizeOfHeight *
                                              0.015),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                  MediaQuerySizeOfHeight * 0.01,
                                ),
                                Text(
                                  '118 abuja nigeria',
                                  style: TextStyle(
                                      fontSize:
                                      MediaQuerySizeOfHeight *
                                              0.015),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuerySizeOfHeight * 0.02,
                ),
                Card(
                  elevation: 0.5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: MediaQuerySizeOfHeight * 0.013,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Classic Cheese Burger',
                          style: TextStyle(
                              fontSize:
                              MediaQuerySizeOfHeight * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$30',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:
                              MediaQuerySizeOfHeight * 0.015),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 0.5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: MediaQuerySizeOfHeight * 0.013,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'America Beef Burger',
                          style: TextStyle(
                              fontSize:
                              MediaQuerySizeOfHeight * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$20',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:
                              MediaQuerySizeOfHeight * 0.015),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 0.5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: MediaQuerySizeOfHeight * 0.013,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sweet Potatoes Chips',
                          style: TextStyle(
                              fontSize:
                              MediaQuerySizeOfHeight * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$15',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:
                              MediaQuerySizeOfHeight * 0.015),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 0.5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: MediaQuerySizeOfHeight * 0.013,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Chicken Wings Buket',
                          style: TextStyle(
                              fontSize:
                              MediaQuerySizeOfHeight * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$50',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:
                              MediaQuerySizeOfHeight * 0.015),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add more foods',
                      style: TextStyle(
                          fontSize: MediaQuerySizeOfHeight * 0.02,
                          color: Colors.red[300]),
                    ),
                  ),
                ),
                Card(
                  elevation: 0.5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuerySizeOfWidth * 0.017,
                      horizontal: MediaQuerySizeOfHeight * 0.013,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Instruction',
                          style: TextStyle(
                              fontSize:
                              MediaQuerySizeOfHeight * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Add notes',
                                style: TextStyle(
                                    fontSize:
                                    MediaQuerySizeOfHeight *
                                            0.015),
                              ),
                              SizedBox(
                                width: MediaQuerySizeOfWidth * 0.01,
                              ),
                               Icon(
                                Icons.add,
                                size: MediaQuerySizeOfHeight * 0.02,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 0.5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuerySizeOfHeight * 0.013,
                      vertical: MediaQuerySizeOfHeight * 0.03,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                              style: TextStyle(
                                  fontSize:
                                  MediaQuerySizeOfHeight * 0.02,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '\$66',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize:
                                  MediaQuerySizeOfHeight * 0.015),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuerySizeOfHeight * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery fee',
                              style: TextStyle(
                                  fontSize:
                                  MediaQuerySizeOfHeight * 0.02,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Free',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                MediaQuerySizeOfHeight * 0.015,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuerySizeOfWidth * 0.05,
                ),
                Material(
                  borderRadius: BorderRadius.circular(MediaQuerySizeOfHeight *0.015),
                  color: Theme.of(context).primaryColor,
                  child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuerySizeOfWidth * 0.32,
                        right: MediaQuerySizeOfWidth * 0.32,
                      ),
                      child: Text(
                        'CheckOut',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuerySizeOfHeight * 0.02,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
