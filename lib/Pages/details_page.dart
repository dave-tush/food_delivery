import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/text_form_field.dart';
import 'package:get/get.dart';
import '../controller/tap_controller.dart';
import '../widgets/button.dart';
import '../widgets/card.dart';
import '../widgets/colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEmpty = true;
    // TextEditingController _controller = TextEditingController();
    tapController controller = Get.put(tapController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextsFormField(
                validator: (value) => controller.foodName = value,
                controller: controller.controllerText,
                hintText: 'Enter food name',
              ),
              const SizedBox(
                height: 20,
              ),
              TextsFormField(
                validator: (value) => controller.address = value,
                controller: controller.controllerAddress,
                hintText: 'Enter address',
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Buttons(
                text: "Enter",
                pressedButton: () {
                  controller.enterValue();
                  controller.enterAddress();
                  controller.clearText();
                  print(controller.foodName);
                  controller.controllersAddress();
                },
                color: Colors.white,
                buttonColor: ColorsToBeUsed().primaryColor,
              ),
              GetBuilder<tapController>(builder: (tabController) {
                return Cards(
                  imageUrl: 'assets/images/restaurant/restaurant1.jpg',
                  iconsToUse: null,
                  foodName: '${controller.foodName}',
                  address: controller.address.toString() ,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
