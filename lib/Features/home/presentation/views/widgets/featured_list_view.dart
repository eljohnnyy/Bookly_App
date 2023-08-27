import 'package:flutter/cupertino.dart';

import 'book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
           height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        
        itemBuilder: (context,index){
    
        return  const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8),
          child: BookImage(),
        );
      }),
    );
  }
}


