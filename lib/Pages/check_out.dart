// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../models/images_list.dart';

class CheckOut extends StatefulWidget {
  final newLists = listOfItems();
  CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    var ThemeColor = Theme.of(context).primaryColor;
    var ThemeColorDark = Theme.of(context).primaryColorDark;
    var MediaQuerySizeOfWidth = MediaQuery.of(context).size.width;
    var MediaQuerySizeOfHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                      'Check Out',
                      style:
                          TextStyle(fontSize: MediaQuerySizeOfHeight * 0.025),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuerySizeOfHeight * 0.02,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Delivery Address',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: MediaQuerySizeOfHeight * 0.017),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '123 new York station,NY \n11201 USA',
                              // style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Change",
                                style: TextStyle(color: ThemeColorDark),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuerySizeOfHeight * 0.01,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Payment Method',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: MediaQuerySizeOfHeight * 0.017),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  const Text('Add'),
                                  Icon(
                                    Icons.add,
                                    size: MediaQuerySizeOfHeight * 0.02,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.grey[100],
                          child: Padding(
                            padding:
                                EdgeInsets.all(MediaQuerySizeOfHeight * 0.015),
                            child: Row(
                              children: [
                                const Icon(Icons.credit_card_rounded),
                                SizedBox(
                                  width: MediaQuerySizeOfWidth * 0.06,
                                ),
                                Text(
                                  '**** **** **** 1234',
                                  style: TextStyle(
                                      fontSize: MediaQuerySizeOfHeight * 0.02),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuerySizeOfHeight * 0.01,
                        ),
                        Container(
                          color: Colors.grey[100],
                          child: Padding(
                            padding:
                                EdgeInsets.all(MediaQuerySizeOfHeight * 0.015),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.paypal,
                                  color: Colors.blue[600],
                                ),
                                SizedBox(
                                  width: MediaQuerySizeOfWidth * 0.06,
                                ),
                                Text(
                                  'david123@gmail.com',
                                  style: TextStyle(
                                      fontSize: MediaQuerySizeOfHeight * 0.02),
                                ),
                                SizedBox(
                                  width: MediaQuerySizeOfWidth * 0.271,
                                ),
                                GestureDetector(
                                  child: Icon(
                                    Icons.check_circle,
                                    color: ThemeColorDark,
                                  ),
                                  onTap: () {},
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
                  height: MediaQuerySizeOfHeight * 0.01,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuerySizeOfHeight * 0.02,
                        vertical: MediaQuerySizeOfHeight * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text("Enter Coupon Code",style: TextStyle(
                             fontWeight: FontWeight.w200,
                             fontSize: MediaQuerySizeOfHeight * 0.019),),
                        Text(
                          'HUNGRY 101',
                          style: TextStyle(
                              color: ThemeColorDark,
                              fontWeight: FontWeight.w500,
                              fontSize: MediaQuerySizeOfHeight * 0.019),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuerySizeOfHeight * 0.01,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuerySizeOfHeight * 0.015,
                      horizontal: MediaQuerySizeOfHeight * 0.015,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Summary',
                            style: TextStyle(
                                fontSize: MediaQuerySizeOfHeight * 0.02,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuerySizeOfHeight * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Subtotal'),
                            Text(
                              widget.newLists.prices[1],
                              style: TextStyle(
                                  fontSize: MediaQuerySizeOfHeight * 0.015,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuerySizeOfHeight * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Delivery cost'),
                            Text(
                              'free',
                              style: TextStyle(
                                  fontSize: MediaQuerySizeOfHeight * 0.02,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuerySizeOfHeight * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Discount'),
                            Text(
                              widget.newLists.prices[0],
                              style: TextStyle(
                                  fontSize: MediaQuerySizeOfHeight * 0.015,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuerySizeOfHeight * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontSize: MediaQuerySizeOfHeight * 0.025,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.newLists.prices[0],
                              style: TextStyle(
                                  fontSize: MediaQuerySizeOfHeight * 0.02,
                                  fontWeight: FontWeight.w600,
                                  color: ThemeColorDark),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuerySizeOfHeight * 0.08,
                ),
                Material(
                  borderRadius:
                      BorderRadius.circular(MediaQuerySizeOfHeight * 0.015),
                  color: Theme.of(context).primaryColor,
                  child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuerySizeOfWidth * 0.35,
                        right: MediaQuerySizeOfWidth * 0.35,
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
