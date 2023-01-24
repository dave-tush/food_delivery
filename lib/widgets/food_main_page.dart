import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Pages/search_bars.dart';
import '../models/data.dart';
import '../models/food_category.dart';
import '../models/order.dart';
import 'build_card.dart';
import 'card.dart';
import 'colors.dart';

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