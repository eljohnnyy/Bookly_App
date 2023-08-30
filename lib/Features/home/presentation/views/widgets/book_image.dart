import 'package:flutter/material.dart';



class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.imageurl});
final String imageurl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
             
              image:  DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(imageurl)))),
    );
  }
}
