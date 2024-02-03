import 'package:flutter/material.dart'; 

class Life extends StatelessWidget {
  const Life({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Life",
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.w600,
                fontSize: 28
              ),          
            ),
            Text(
              "Practices to stay happy in life",
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