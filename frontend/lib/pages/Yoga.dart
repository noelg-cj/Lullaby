import 'package:flutter/material.dart'; 

class Yoga extends StatelessWidget {
  const Yoga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Yoga",
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.w600,
                fontSize: 28
              ),          
            ),
            Text(
              "Keeping you Healthy",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff534C7F)
              ),
            )
          ],
        ),
      ),
    );
  }
}