import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/scroll_behaviour.dart';
import 'package:food_delivery/Pages/specific_food.dart';
import 'package:food_delivery/models/images_list.dart';

import '../models/burger_models.dart';

class SingleBurger extends StatefulWidget {
  List<bool> isFavourite = List.filled(newsLists.length, true);
  List<bool> star = List.filled(newsLists.length, true);
  final newListOfItems = listOfItems();
  final burgerImages = listOfItems();
  final List<String> ingredients = [
    'Classic Cheese Burger',
    'Classic Cheese Burger',
    'Classic Cheese Burger',
    'Classic Cheese Burger',
    'Classic Cheese cake',
  ];

  SingleBurger({Key? key}) : super(key: key);

  @override
  State<SingleBurger> createState() => _SingleBurgerState();
}

class _SingleBurgerState extends State<SingleBurger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/burger-1-1.jpg'),
                      fit: BoxFit.cover),
                ),
                // color: Colors.pink,
                height: MediaQuery.of(context).size.height * 0.40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 8.0,
                  ),
                  child: Column(
                    children: [
                      Align(
                          alignment: AlignmentDirectional.topStart,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SpecificFood(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_new_sharp,
                              color: Colors.white,
                            ),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      const Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Text(
                          'Burgers',
                          style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 5.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '128 restaurants',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.filter_list,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: ScrollConfiguration(
                          behavior: NoGlowBehaviour(),
                          child: ListView.builder(
                              itemCount: newsLists.length,
                              itemBuilder: (BuildContext context, int index) {
                                List latestList = newsLists;
                                // Card newCard = Card as Card;
                                return Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image(
                                        fit: BoxFit.fitHeight,
                                        height: 100.0,
                                        image: widget
                                            .newListOfItems.imageList[index],
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                latestList[index].toString(),
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.023,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              Row(
                                                children: [
                                                  const Text('Cafe:'),
                                                  const SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  const Text('WinderFood'),
                                                  const SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Text(widget.newListOfItems
                                                      .prices[index]
                                                      .toString())
                                                ],
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.0013,
                                              ),
                                              Row(
                                                children: [
                                                  GestureDetector(
                                                    child: widget.star[index]
                                                        ? Icon(
                                                            Icons.star_border,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            size: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.02,
                                                          )
                                                        : Icon(
                                                            Icons.star,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            size: MediaQuery.of(context).size.height * 0.02,
                                                          ),
                                                    onTap: () {
                                                      setState(() {
                                                        widget.star[index] =
                                                            !widget.star[index];
                                                      });
                                                    },
                                                  ),
                                                  const Text('4.9'),
                                                  const SizedBox(
                                                    width: 5.0,
                                                  ),
                                                  const Text(
                                                    '129 Messages',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: widget.isFavourite[index]
                                      ?  Icon(
                                        Icons.favorite_border,
                                        size: MediaQuery.of(context).size.height * 0.025,
                                      )
                                          : Icon(
                                      Icons.favorite,
                                      size: MediaQuery.of(context).size.height * 0.025,
                                      color: Theme.of(context)
                                          .primaryColor,
                                      ),
                                        onTap: () {
                                          setState(() {
                                            widget.isFavourite[index] = !widget.isFavourite[index];
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
