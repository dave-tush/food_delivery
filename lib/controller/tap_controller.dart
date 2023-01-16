import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class tapController extends GetxController {
  final List<bool> star = List.filled(10, true);
  bool isLastPage = false;
  var _price = 2.4;
  bool isTrue = false;
  bool isIcon = false;
  String? foodName;
  String? address;
  TextEditingController controllerText = TextEditingController();
  TextEditingController controllerAddress = TextEditingController();
  int _x = 1;
  double? x;
  int get X => _x;
  double get price => _price;
  double get subPrice => _price - _price;

 late var newPrice = _price++;
 late var totalPrice = _price--;
// var  totalPrice = price;
  void iconController(){
    isIcon =! isIcon;
    print(isIcon);
    update();
  }
  void onPageChangeToTwo(int index) {
    isLastPage = index == 2;
    update();
  }
  void isFavourite (index){
    star[index] =! star[index];
    update();
  }
  void controllersAddress() => controllerAddress.clear();
  void increaseNumber() {
    _price += _price;
    // for(double x = 2.4; x >= 2.4; x++){
    //   x;
    // }
    // newPrice++;
    // print(newPrice);

    update();
    _x++;
    update();
  }
  void clearText() => controllerText.clear();

  void enterAddress(){
    address;
    update();
  }
  void enterValue(){
    foodName;
    update();
  }
  void decreaseNumber() {
    // subPrice;
    update();
    if (_x <= 1 && _price == _price) {
      null;
    } else {
      _x--;
      // totalPrice--;
      // print(totalPrice);
      update();
    }
  }
  void isTrueFunc(){
    isTrue = !isTrue;
    update();
  }
}
