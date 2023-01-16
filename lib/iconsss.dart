import 'package:flutter/material.dart';
import 'package:food_delivery/controller/tap_controller.dart';

class Iconns extends StatelessWidget {
  const Iconns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    tapController controller  =  tapController();
    bool isIcon = true;
    return  Scaffold(
      appBar: AppBar(title: Text('Hello',)),
      body: Container(
        child: InkWell(child: Icon(isIcon ? Icons.ten_k : Icons.add),
        onTap: (){
          controller.iconController();
        },),
      ),
    );
  }
}
