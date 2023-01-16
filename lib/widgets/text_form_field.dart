import 'package:flutter/material.dart';

import 'colors.dart';
class TextsFormField extends StatelessWidget {
  final FormFieldValidator<String>? validator;
  final controller;
  final String? hintText;
   TextsFormField({Key? key, this.validator, this.controller, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      style: const TextStyle(
        fontSize: 10,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsToBeUsed().placeHolderColor.withOpacity(0.2),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            // width: 2.0,
              color:
              ColorsToBeUsed().placeHolderColor.withOpacity(0.1)),
        ),
        focusedBorder:
        // InputBorder.none,
        OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10),),
          borderSide: BorderSide(
            width: 2.0,
            color: ColorsToBeUsed().placeHolderColor.withOpacity(0.1),
          ),
        ),
        // labelText: 'Enter your name',
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15,
          color: ColorsToBeUsed().mainFontColor.withOpacity(0.5),
        ),
      ),
    );
  }
}
