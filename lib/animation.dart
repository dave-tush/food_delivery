import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/build_card.dart';

import 'models/data.dart';
import 'models/food_category.dart';
import 'models/order.dart';

class Animations extends StatefulWidget {
  const Animations({Key? key}) : super(key: key);

  @override
  State<Animations> createState() => _AnimationsState();
}


class _AnimationsState extends State<Animations> {
  double _width  = 300;
  double _height =  300;
  double _textFont = 40;
  double _top = 0;
  double _right = 0;
  double _left = 0;
  double _bottom = 0;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        _width = 100;
        _height = 100;
        _textFont = 10;
        _top = 30;
        _right = 50;
         _left = 50;
         _bottom = MediaQuery.of(context).size.height / 2;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: AnimatedContainer(
        margin: EdgeInsets.only(top: _top,left: _left,bottom: _bottom,right: _right),
        width: _width,
        height: _height,
        color: Colors.red,
        duration: Duration(seconds: 1),
        child: InkWell(
          child: Text(
            "Hello",
            style: TextStyle(fontSize: _textFont),
          ),
          onTap: (){
            setState(() {
              _height = 200;
              print(_height);
            });
          },
        ),
      ),
    ));
  }
}
