import 'package:flutter/material.dart';

const textColor = Color(0xff534C7F);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xffA18CE7),
  colorScheme: ColorScheme.light(
    primary: Color(0xff9747FF),
    inversePrimary: textColor,
    background: Color(0xffF2F1F8)
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: textColor,
      fontSize: 14
    ),
    bodyLarge: TextStyle(
      fontFamily: 'PlayfairDisplay',
      fontWeight: FontWeight.w600,
      color: textColor,
      fontSize: 24
    )
  )
);