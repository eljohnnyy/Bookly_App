import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';



class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.imageurl});
final String imageurl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.5/ 4,
        child: CachedNetworkImage(
        
          errorWidget: (context, url, error) =>const Icon(Icons.error,color: Colors.red,size: 32,),
          fit: BoxFit.fill,
          
          imageUrl: imageurl),
      ),
    );
  }
}
