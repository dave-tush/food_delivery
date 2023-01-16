import '../widgets/rating_star.dart';

class Restaurant {
  String name;
  String imageUrl;
  String address;
   // RatingStar star;
  String distance;
  Restaurant({
  required  this.name,
    required this.imageUrl,
    required  this.address,
    required this.distance,
    // required  this.star,
  }
  );
}
