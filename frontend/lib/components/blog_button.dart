import 'package:flutter/material.dart';

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
    return Container(
      
    );
  }
}