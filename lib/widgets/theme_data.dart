import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color(0xffFFA800),
    primarySwatch: Colors.deepPurple,
    fontFamily: 'poppins',
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color(0xff360034),
      ),
      headline2: TextStyle(
        color: Color(0xff51004E),
      ),
      headline3: TextStyle(
        color: Color(0xff333333),
      ),
      headline4: TextStyle(
        color: Color(0xffC4C4C4),
      ),
    ),
  );
}
