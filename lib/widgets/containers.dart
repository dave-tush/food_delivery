import 'package:flutter/material.dart';
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