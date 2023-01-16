import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/colors.dart';

class OnBoardingScreens extends StatefulWidget {
  final image;
  final mainText;
  final subText;
  const OnBoardingScreens({
    Key? key,
    required this.image,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
   final mediaQueryOfHeight = MediaQuery.of(context).size.height;
    return Container(
      // height: 300,
      color: Colors.white,
      child: Column(
        children: [
          Image(
            image: widget.image,
            height: mediaQueryOfHeight * 0.35,
          ),
          SizedBox(
            height: mediaQueryOfHeight * 0.06,
          ),
          Text(
            widget.mainText,
            style:  TextStyle(
              fontSize: 36,
              letterSpacing: 1,
              color: ColorsToBeUsed().primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: mediaQueryOfHeight * 0.02,
          ),
          Text(
            widget.subText,
            style:  TextStyle(
              fontSize: 24,
              color: ColorsToBeUsed().primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
