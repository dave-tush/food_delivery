import 'package:flutter/material.dart';

import '../models/data.dart';
import '../models/food_category.dart';

Widget buildCategoriesCard(
    BuildContext context,
    FoodCategory category,
    int index,
    ) {
  FoodCategory categories = foodsCategories[index];
  return Padding(
    padding: const EdgeInsets.only(right: 20.0),
    child: Container(
      height: 100,
      width: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.purple,
        image: DecorationImage(
          opacity: 0.5,
          fit: BoxFit.cover,
          image: AssetImage(
            categories.imageUrl[0],
          ),
        ),
      ),
      // color: Colors.red,
      child: Center(
        child: Text(
          categories.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    ),
  );
}