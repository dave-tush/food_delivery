import 'dart:convert';
import 'package:http/http.dart' as http;
import 'receipe.dart';
class RecipeApi {
  static Future <List<Recipe>> getRecipe() async {
    var uri = Uri.https("yummly2.p.rapidapi.com", "/feeds/list",{"limit": "24",
      "start": "0"});
    final response = await http.get(uri,headers: {
      "X-RapidAPI-Key": "896cafe0a3mshdc9a83ec775de71p19b265jsnd94bfd7b9d7a",
      "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    } );
    Map data = jsonDecode(response.body);
    List _temp = [];
    return Recipe.recipeFromSnapshot(_temp);
  }
}