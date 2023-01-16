import 'package:flutter/material.dart';
import 'package:food_delivery/models/burger_models.dart';

import 'images_list.dart';

class FirstCard extends StatefulWidget {
  bool star = true;
  final newBurgerModel = newsLists;
  var latestItem = listOfItems();
  final newListOfItems = listOfItems();
  FirstCard({Key? key}) : super(key: key);

  @override
  State<FirstCard> createState() => _FirstCardState();
}

class _FirstCardState extends State<FirstCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.newListOfItems.imageList.length,
      itemBuilder: (BuildContext context, int index) {
        return TextButton(
          onPressed: () {
            setState(() {
              Navigator.of(context).pushNamed('/specificFood');
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    // bottom: MediaQuery.of(context).size.height * 0.01,
                    top: MediaQuery.of(context).size.height * 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      fit: BoxFit.fitWidth,
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.height * 0.35,
                      image: widget.newListOfItems.imageList[index],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.03,
                        // top: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: Text(
                        widget.newBurgerModel[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.025),
                      child: Row(
                        children: [
                          Text(
                            'Cafe:',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.015),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.013,
                          ),
                          Text(
                            'WinderFood',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.015),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.013,
                          ),
                          Text(
                            widget.newListOfItems.prices[index],
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.015),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.01,
                          ),
                          GestureDetector(
                            child: widget.star
                                ? Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                    size: MediaQuery.of(context).size.height *
                                        0.015,
                                  )
                                : Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                    size: MediaQuery.of(context).size.height *
                                        0.015,
                                  ),
                          ),
                          // Icon(
                          //   Icons.star,
                          //   color: Theme.of(context).primaryColor,

                          // ),
                          Text(
                            '4.9',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.015),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
