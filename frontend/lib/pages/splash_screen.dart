import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F1F8),
      body: Center(
        child: SizedBox(
          height: 70,
          width: 265,
          child: Image.asset('assets/images/logo.png')
        ),
      )
    );
  }
}