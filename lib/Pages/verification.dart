// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/colors.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 15,
          ),
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: GestureDetector(
                  child: Icon(Icons.arrow_back_ios_rounded),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Text(
                'Verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorsToBeUsed().primaryColor,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Enter the OTP code sent to your phone number',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: ColorsToBeUsed().primaryColor,
                    fontSize: 17),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OTPInputArea(
                    text: '6',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  OTPInputArea(
                    text: '3',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  OTPInputArea(
                    text: '1',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  OTPInputArea(
                    text: '9',
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text(
                    'Didn\'t receive OTP code! ',
                    style: TextStyle(
                      color: ColorsToBeUsed().primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    child: Text(
                      'RESEND',
                      style: TextStyle(
                          color: ColorsToBeUsed().primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Buttons(
                text: 'Submit',
                pressedButton: () {},
                buttonColor: ColorsToBeUsed().mainColor,
                color: ColorsToBeUsed().primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OTPInputArea extends StatelessWidget {
  final String text;
  const OTPInputArea({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorsToBeUsed().placeHolderColor.withOpacity(0.5),
      ),
      child: Align(
        alignment: AlignmentDirectional.center,
        child: Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
