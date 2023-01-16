import 'package:flutter/material.dart';

class OnBoardingTemp extends StatelessWidget {
  const OnBoardingTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          // loginButton(),
          const Image(
            image: AssetImage('assets/images/delivery-truck.png'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Text(
            'Find Food You Love',
            style: TextStyle(
              fontSize: 34.0,
              letterSpacing: 1,
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          const Text(
            'Discover the best food from \nover 1,000 restaurant',
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
