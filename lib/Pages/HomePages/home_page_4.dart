import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/colors.dart';
import 'package:food_delivery/widgets/rating_star.dart';
import 'package:get/get.dart';

import '../../controller/tap_controller.dart';

class HomePage4 extends StatefulWidget {
  const HomePage4({Key? key}) : super(key: key);

  @override
  State<HomePage4> createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  tapController controller = Get.put(tapController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image(
                height: 200,
                width: MediaQuery.of(context).size.width,
                image: const AssetImage(
                    'assets/images/restaurant/restaurant1.jpg'),
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      InkWell(
                        child: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                        onTap: () => Get.back(),
                      ),
                      const SizedBox(
                        width: 350,
                      ),
                      const InkWell(
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Kichi Chops and drinks',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const Text(
                        '23a, Excel road Ogba, Lagos',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          RatingStar(rating: 5),
                          Text(
                            '(123 reviews)',
                            style: TextStyle(
                              color: Colors.white,
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
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cutomize your Meal',
                  style: TextStyle(
                      color: ColorsToBeUsed().primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                InkWell(
                  child: Icon(
                    Icons.shopping_cart,
                    color: ColorsToBeUsed().mainColor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(
                    image: AssetImage('assets/images/burger.png'),
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cheese Burger',
                        style: TextStyle(
                          color: ColorsToBeUsed().primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      // latestController(),
                      GetBuilder<tapController>(builder: (_) {
                        return Text(
                          '\$ ${controller.price}',
                          style: TextStyle(
                            color: ColorsToBeUsed().mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        );
                      })
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: const Icon(
                          Icons.add_circle_outline,
                          size: 28,
                        ),
                        onTap: () => controller.decreaseNumber(),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GetBuilder<tapController>(
                        builder: (_) {
                          return Text(
                            controller.X.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        child: Icon(
                          Icons.add_circle_outlined,
                          size: 28,
                          color: ColorsToBeUsed().mainColor,
                        ),
                        onTap: () {
                          controller.increaseNumber();
                          // print(controller.X);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Choose Dressing',
              style: TextStyle(
                color: ColorsToBeUsed().primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CartItems(
            dressingPrice: 20,
            dressingText: 'Lettuce',
          ),
          const SizedBox(
            height: 10,
          ),
          CartItems(
            dressingPrice: 10,
            dressingText: 'Onions',
          ),
          const SizedBox(
            height: 10,
          ),
          CartItems(
            dressingPrice: 0,
            dressingText: 'KetchUp',
          ),
          const SizedBox(
            height: 10,
          ),
          CartItems(
            dressingPrice: 2,
            dressingText: 'American Cheese',
          ),
          const SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Buttons(
                text: 'Proceed',
                color: ColorsToBeUsed().primaryColor,
                pressedButton: () {},
                buttonColor: ColorsToBeUsed().mainColor),
          )
        ],
      ),
    );
  }

  latestController() {
    return GetBuilder<tapController>(builder: (_) {
      return Text('\$ ${controller.price}',
          style: TextStyle(
            color: ColorsToBeUsed().mainColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ));
    });
  }
}

class CartItems extends StatelessWidget {
  tapController controller = Get.put(tapController());
  final String? dressingText;
  bool isTrue = false;
  final int? dressingPrice;
  CartItems({
    Key? key,
    this.dressingPrice,
    this.dressingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: controller.isTrue
                ? const Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.grey,
                    size: 32,
                  )
                : Icon(
                    Icons.check_box,
                    color: ColorsToBeUsed().mainColor,
                    size: 32,
                  ),
            onTap: () => controller.isTrueFunc(),
          ),
          const SizedBox(
            width: 25,
          ),
          Expanded(
            flex: 6,
            child: Text(
              dressingText!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text('+\$ $dressingPrice'),
          ),
        ],
      ),
    );
  }
}
