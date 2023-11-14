import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F1F8),
      body: Center(
        child: Container(
          height: 70,
          width: 265,
          decoration: BoxDecoration(
          ),
          child: Image.asset('assets/images/logo.png')
        ),
      )
    );
  }
}