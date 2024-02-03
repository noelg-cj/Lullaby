import 'package:flutter/material.dart';
import 'package:frontend/Home.dart';
import 'package:frontend/pages/Dashboard.dart';
import 'package:frontend/pages/Life.dart';
import 'package:frontend/pages/Splash_screen_two.dart';
import 'package:frontend/components/blog_page.dart';
import 'package:frontend/pages/Yoga.dart';
import 'package:frontend/pages/splash_screen.dart';
import 'package:frontend/pages/Theory.dart';
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
      home: Home(),
    );
  }
}

