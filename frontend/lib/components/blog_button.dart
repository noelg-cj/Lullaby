import 'package:flutter/material.dart';

import 'blog_page.dart';

class BlogButton extends StatefulWidget {
  final String title;
  final int episodes;
  final String imageurl;

  const BlogButton ({Key? key, required this.title, required this.episodes, required this.imageurl}) : super(key: key);

  @override
  State<BlogButton> createState() => _BlogButtonState();
}

class _BlogButtonState extends State<BlogButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BlogWidget()))
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 86,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      widget.imageurl,
                      height: 90,
                      width: 90,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}