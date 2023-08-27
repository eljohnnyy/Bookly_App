import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';
import 'book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [

         const  CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.17),
            child:const  BookImage(),
          ),
        ],
      ),
    );
  }
}
