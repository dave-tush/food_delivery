class Recipe {
  String? foodName;
  String? images;
  String? totalTime;
  int? rating;
  Recipe({
    this.foodName,
    this.totalTime,
    this.rating,
    this.images,
  });
  factory Recipe.fromJson(dynamic json) {
    return Recipe(
      foodName: json['name'] as String,
      totalTime: json['totalTime'] as String,
      images: json['images'][0] as String,
      rating: json['rating'] as int,
    );
  }
  static List<Recipe> recipeFromSnapshot(List snapshot) {
    return snapshot.map((data) => Recipe.fromJson(data)).toList();
  }
}
