import 'package:flutter/foundation.dart';

class Recipe {
  String? name;
  String? totalTime;
  String? images;
  int? ratings;
  Recipe({this.totalTime,this.images,this.name,this.ratings});
  factory Recipe.fromJson(dynamic json){
    return Recipe(
      name: json['name'] as String,
      totalTime: json['totalTime'] as String,
      images: json['images'][0]['hostedLargeUrl'] as String,
      ratings: json['rating'] as int,
    );
  }
  static List<Recipe> recipeFromJson(List snapShot){
    return snapShot.map((e) => Recipe.fromJson(e)).toList();
  }
}