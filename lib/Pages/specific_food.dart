import 'package:flutter/material.dart';
import 'package:food_delivery/models/burger_models.dart';
// import 'package:food_delivery/models/first_card.dart';
import 'package:food_delivery/models/images_list.dart';

class SpecificFood extends StatefulWidget {
  bool isFavourite = true;
  // final burgerImages = listOfItems();
  final burgerImages = listOfItems();
  List<String> ingerdients = [
    'Classic Cheese Burger',
    'Classic Cheese Burger',
    'Classic Cheese Burger',
    'Classic Cheese Burger',
    'Classic Cheese cake',
  ];
  SpecificFood({Key? key}) : super(key: key);

  @override
  State<SpecificFood> createState() => _SpecificFoodState();
}

class _SpecificFoodState extends State<SpecificFood> {
  @override
  Widget build(BuildContext context) {
    final newLatestList = newsLists;
    var ScreenSize = MediaQuery.of(context).size.width;
    var ScreenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: (MediaQuery.of(context).size.height) * 0.37,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.of(context).pushNamed('/');
                                });
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Image(
                            image:
                                const AssetImage('assets/images/burger-2.png'),
                            height: MediaQuery.of(context).size.height * 0.18,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '20 - 30 mins',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 1.7,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: MediaQuery.of(context).size.height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          const Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Really Cool \nBurgers',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: GestureDetector(
                              child: widget.isFavourite
                                  ? Icon(
                                      Icons.favorite_border,
                                      color: Theme.of(context).primaryColorDark,
                                size: MediaQuery.of(context).size.height * 0.05,
                                    )
                                  : Icon(
                                      Icons.favorite,
                                      color: Theme.of(context).primaryColor,
                                  size: MediaQuery.of(context).size.height * 0.05,
                                    ),
                              onTap: () {
                                setState(() {
                                  widget.isFavourite = !widget.isFavourite;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
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
                            width: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Text('124 ratings'),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Text('Cafe:'),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Text('WinderFood'),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.01,
                          ),
                           Text(widget.burgerImages.prices.first),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      const Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text('123 Rock Street, New York'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      const Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'Popular Choices',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.32,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.burgerImages.imageList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:  EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.02),
                                child: Card(
                                  color: Colors.grey[200],
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional.center,
                                        child: Image(
                                          image: widget.burgerImages.imageList[6],
                                          height:
                                              MediaQuery.of(context).size.height *
                                                  0.2,
                                          // fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          newLatestList[index],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.01,
                                      ),
                                       Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          widget.burgerImages.prices.getRange(0, 7).elementAt(index).toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      const Text(
                        'Burgers',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        children: widget.ingerdients.map(
                          (e) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children:  [
                                        Text('Classic Cheese Burger'),
                                        // Text(widget.burgerImages.price),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Angus, beef, cheese, onions,'),
                                        Text('\$98'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const Text(
                        'Snacks',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Column(
                        children: widget.ingerdients.map(
                          (e) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Classic Cheese Burger'),
                                        Text('\$98'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children:  [
                                        Text('Angus, beef, cheese, onions,'),
                                        prices(),
                                        // Text('\$98'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Align(
                        alignment: AlignmentDirectional.center,
                        child: Material(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Theme.of(context).primaryColor,
                          child: TextButton(
                            onPressed: null,
                            child: Padding(
                              padding: EdgeInsets.only(
                                // top: MediaQuery.of(context).size.height * 0.05,
                                left: MediaQuery.of(context).size.width * 0.2,
                                right: MediaQuery.of(context).size.width * 0.2,
                              ),
                              child: const Text(
                                'Add to basket',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
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
  prices (){
   var price1 = BurgerModel();
   return Text(
     price1.price.toString(),
   );
  }
}
