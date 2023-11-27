import 'package:flutter/material.dart';

const textColor = Color(0xff534C7F);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xffA18CE7),
  colorScheme: const ColorScheme.light(
    primary: Color(0xff9747FF),
    inversePrimary: textColor,
    background: Color(0xffF2F1F8)
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      color: textColor,
      fontSize: 18
    ),
    bodySmall: TextStyle(
      color: textColor,
      fontSize: 14,
    ),
    bodyMedium: const TextStyle(
      fontSize: 16,
      color: textColor
    ),
    bodyLarge: TextStyle(
      fontFamily: 'PlayfairDisplay',
      fontWeight: FontWeight.w600,
      color: textColor,
      fontSize: 24
    ),
    displayMedium: TextStyle(
      fontFamily: 'PlayfairDisplay',
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontSize: 32
    )
  )
);