import 'package:flutter/material.dart';
import 'package:frontend/components/blog_page.dart';
import 'package:frontend/pages/Theory.dart';

import '../components/blog_button.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/images/home_bg.png'),
                Container(
                  alignment: Alignment.center,
                  height: 120,
                  child: Image.asset('assets/images/logo_dark.png')
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                        Colors.transparent,
                        Colors.white
                      ])
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning,',
                    style: Theme.of(context).textTheme.bodySmall
                  ),
                  Text(
                    "Margaret",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.inversePrimary.withOpacity(0.35),
                  ),
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Row(
                  children: [
                    Text(
                      "😊",
                      style: TextStyle(
                        fontSize: 24
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "How are you feeling today?",
                        style: Theme.of(context).textTheme.bodyMedium
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Pick up where you left off",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                )
              ),
            ),
            const SizedBox(height: 10),
            const BlogButton(
              title: "How yoga contributes to your happiness",
              episodes: 3,
              imageurl: 'assets/images/smiley_pic.png'
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Recommended",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                )
              ),
            ),
            const SizedBox(height: 10),
            const BlogButton(
              title: "Tasadana",
              episodes: 3,
              imageurl: 'assets/images/tasadana.png'
            ),
            const BlogButton(
              title: "Your daily cup of Yoga",
              episodes: 3,
              imageurl: 'assets/images/cup_yoga.png'
            ),
          ],
        ),
      )
    );
  }
}