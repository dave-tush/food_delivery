import 'package:flutter/material.dart';
class RatingStar extends StatelessWidget {
final int rating;
  const RatingStar({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     String star = '';
     for (int i = 0; i < rating; i++){
        star += '⭐ ';
     }
     star.trim();
    return 
      Text(star);
  }
}
