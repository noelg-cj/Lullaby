import 'package:flutter/material.dart';

/* 
  TODO: Add "done by and date"
 */

class BlogWidget extends StatelessWidget {
  const BlogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 20,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                ),
              )
            ),
            backgroundColor: Theme.of(context).colorScheme.background,
            elevation: 0,
            pinned: true,
            expandedHeight: 280,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Image(
                      image: AssetImage('assets/images/blog_bg.png'),
                      fit: BoxFit.cover
                    ),
                  ),
                ]
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Taking better care of yourself",
                    style: Theme.of(context).textTheme.displayMedium
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Taking better care of yourself is not a luxury; it's a necessity. In our fast-paced, often stressful lives, it's easy to put our well-being on the back burner. \n\nHowever, prioritizing self-care is essential for maintaining good physical and mental health.\n\nStart by carving out some time each day for activities that nourish your body and soul, whether it's through exercise, meditation, or indulging in a good book. Ensure you're getting enough sleep and eating a balanced diet. Don't forget to connect with loved ones and seek support when needed, as social connections can be a powerful source of comfort.Remember, self-care isn't selfish; it's a vital part of living a happy, healthy life.",
                    style: Theme.of(context).textTheme.bodyMedium
                  )
                ],
              )
            ),
          )
        ],
      )
    );
  }
}