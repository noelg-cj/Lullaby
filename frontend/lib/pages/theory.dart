import 'package:flutter/material.dart';

import '../components/blog_button.dart'; 

class Theory extends StatelessWidget {
  const Theory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Theory",
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.w600,
                fontSize: 28
              ),          
            ),
            Text(
              "Where theory meets serenity",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff534C7F)
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlogButton(
              title: "How yoga contributes to your happiness",
              episodes: 5,
              imageurl: "assets/images/smiley_pic.png"
            ),
            BlogButton(
              title: "International Yoga day",
              episodes: 5,
              imageurl: "assets/images/sleep.png"
            ),
            BlogButton(
              title: "Taking proper care of you",
              episodes: 5,
              imageurl: "assets/images/smile_lady.png"
            ),
            BlogButton(
              title: "Your daily cup of Yoga",
              episodes: 5,
              imageurl: "assets/images/cup_yoga.png"
            ),
            BlogButton(
              title: "Tasadana",
              episodes: 5,
              imageurl: "assets/images/tasadana.png"
            ),
          ],
        ),
      ),
    );
  }
}