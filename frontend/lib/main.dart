import 'package:flutter/material.dart';
import 'package:frontend/pages/Home.dart';
import 'package:frontend/pages/splash_screen.dart';
import 'package:frontend/pages/theory.dart';
import 'package:frontend/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: const Home()
    );
  }
}

