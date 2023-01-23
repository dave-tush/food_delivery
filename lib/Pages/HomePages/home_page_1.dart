import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/scroll_behaviour.dart';
import 'package:food_delivery/Pages/search_bars.dart';
import 'package:food_delivery/Pages/shimmer_page.dart';
import 'package:food_delivery/models/data.dart';
import 'package:food_delivery/models/images_list.dart';
import 'package:food_delivery/widgets/card.dart';
import 'package:food_delivery/widgets/colors.dart';
import 'package:food_delivery/widgets/navbar.dart';
import 'package:get/get.dart';

import '../../models/food_category.dart';
import '../../models/order.dart';
import '../../widgets/build_card.dart';

class HomePage1 extends StatefulWidget {
  final newListOfItems = listOfItems();
  HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}
class _HomePage1State extends State<HomePage1> {
  @override
  void initState(){
    super.initState();
    loadData();
  }
  bool? isLoading;
  Future loadData() async {
    setState(() => isLoading = true);
    await Future.delayed(Duration(seconds: 1), (){});
    setState(() {
      isLoading = false;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90.0,
        iconTheme: IconThemeData(color: ColorsToBeUsed().primaryColor),
        title: Text(
          'Welcome to Foodco',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w300,
            fontSize: 26,
            color: ColorsToBeUsed().mainFontColor,
          ),
        ),
        elevation: 0,
        backgroundColor: ColorsToBeUsed().mainColor,
        centerTitle: true,
        actions: [
          GestureDetector(
            child: const Icon(
              Icons.notifications,
            ),
            onTap: () {},
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      drawer: const NavBar(),
      body: SingleChildScrollView(
        child: ScrollConfiguration(
          behavior: NoGlowBehaviour(),
          child:
          // Visibility(visible: false,child: Container(),replacement: const Text('hello world'),),
          isLoading!  ? ShimmerPage() : foodMainPage(),
        ),
      ),
    );
  }
}

Widget foodMainPage() {
  return Column(
    children: [
      Container(
        color: ColorsToBeUsed().mainColor,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 20,
          ),
          child: GestureDetector(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  //vertical: 10,
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    Text('what would you like to eat?'),
                  ],
                ),
              ),
            ),
            onTap: () => Get.to(SearchBars()),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Column(
          children: [
            // SearchBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: ColorsToBeUsed().mainFontColor,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 16,
                      color: ColorsToBeUsed().mainColor,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodsCategories.length,
                  itemBuilder: (BuildContext context, int index) {
                    FoodCategory categories = foodsCategories[index];
                    Order order = currentUser.orders[0];
                    return buildCategoriesCard(context,categories,index);
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Dishes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: ColorsToBeUsed().mainFontColor,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 16,
                      color: ColorsToBeUsed().mainColor,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  itemCount: foodsCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    FoodCategory categories = foodsCategories[2];
                    return Cards(
                      imageUrl: categories.imageUrl[index],
                      foodName: categories.food[index],
                      iconsToUse: Icons.home_outlined,
                      address: 'address',
                      navigation: () {},
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  itemCount: foodsCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    FoodCategory categories = foodsCategories[1];
                    return Cards(
                      imageUrl: categories.imageUrl[index],
                      foodName: categories.food[index],
                      iconsToUse: Icons.home_outlined,
                      address: 'address',
                      navigation: () {},
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Deals',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: ColorsToBeUsed().mainFontColor,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 16,
                      color: ColorsToBeUsed().mainColor,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  itemCount: foodsCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    FoodCategory categories = foodsCategories[3];
                    return Cards(
                      imageUrl: categories.imageUrl[index],
                      foodName: categories.food[index],
                      iconsToUse: Icons.location_on,
                      address: 'address',
                      navigation: () {},
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  itemCount: foodsCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    FoodCategory categories = foodsCategories[2];

                    return Cards(
                      imageUrl: categories.imageUrl.reversed.toList()[index],
                      foodName: categories.food.reversed.toList()[index],
                      iconsToUse: Icons.location_on,
                      address: 'address',
                      navigation: () {},
                    );
                  }),
            ),
          ],
        ),
      ),
    ],
  );
}
// Widget onTap(VoidCallback action, {bool opaque = true}) {
//   return GestureDetector(
//     behavior: opaque ? HitTestBehavior.opaque : HitTestBehavior.deferToChild,
//     onTap: action,
//     child: Card(),
//   );
// }

class Containers extends StatelessWidget {
  double? height;
  double? width;
  Containers({this.width, this.height, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.grey.withOpacity(0.6),
      ),
    );
  }
}
