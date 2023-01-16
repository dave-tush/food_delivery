import 'package:flutter/material.dart';
import 'package:food_delivery/models/burger_models.dart';

import 'images_list.dart';

ListView superGoodCafeCard(BuildContext context) {
  final newListOfItems = listOfItems();
 var newSize = MediaQuery.of(context).size.height;
  return ListView.builder(
      itemCount: newListOfItems.imageList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: newSize * 0.02),
            child: Row(
              children: [
                Image(
                  fit: BoxFit.fitHeight,
                  height: 100.0,
                  image: newListOfItems.imageList[index],
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: newSize * 0.025),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newsLists[index],
                          style: TextStyle(
                            fontSize: newSize * 0.023,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: newSize * 0.006,
                        ),
                        Row(
                          children: [
                            Text(
                              'Cafe:',
                              style: TextStyle(
                                  fontSize:
                                  newSize * 0.015),
                            ),
                            SizedBox(
                              width: newSize * 0.008,
                            ),
                            Text(newListOfItems.restaurantList[index],
                                style: TextStyle(
                                    fontSize: newSize *
                                        0.015)),
                            SizedBox(
                              width: newSize * 0.01,
                            ),
                            Text(newListOfItems.prices[index],
                                style: TextStyle(
                                    fontSize: newSize *
                                        0.015)),
                            SizedBox(
                              width: newSize * 0.01,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: newSize * 0.015,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Theme.of(context).primaryColor,
                              size: 17.0,
                            ),
                            const Text('4.9'),
                            SizedBox(
                              width: newSize * 0.02,
                            ),
                            const Text(
                              '129 Messages',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });
}
