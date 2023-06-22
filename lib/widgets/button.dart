import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final text;
  final color;
  final pressedButton;
  final buttonColor;
  const Buttons({
    Key? key,
    required this.text,
    required this.color,
    required this.pressedButton,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      color: buttonColor,
      child: InkWell(
        onTap: pressedButton,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
              bottom: MediaQuery.of(context).size.height * 0.015,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.022,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
