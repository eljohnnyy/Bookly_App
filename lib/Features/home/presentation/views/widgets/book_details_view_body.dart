import 'package:flutter/material.dart';
import 'package:mybookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:mybookly/core/utlis/styles.dart';

import 'custom_book_details_appbar.dart';
import 'book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .2),
            child: const BookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Rudyard Kipling',
            
            style: Styles.textStyle18
                .copyWith(color: const Color.fromARGB(255, 121, 117, 117),fontStyle: FontStyle.italic),
                
          ),
          const SizedBox(height: 18,),
         const  BookRating(mainAxisAlignment: MainAxisAlignment.center,)
        ],
      ),
    );
  }
}
