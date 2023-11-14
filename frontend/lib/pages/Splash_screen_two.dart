import 'package:flutter/material.dart';

class SplashTwo extends StatelessWidget {
  const SplashTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffA18CE7),
      body: Center(
        child: Text(
          'Take a deep breath',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Color(0xffEEEBFE)
          ),
        ),
      ),
    );
  }
}