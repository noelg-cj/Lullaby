import 'package:flutter/material.dart'; 

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile",
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
    );
  }
}