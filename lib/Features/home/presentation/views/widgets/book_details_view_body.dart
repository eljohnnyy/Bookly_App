import 'package:flutter/material.dart';
import 'package:mybookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:mybookly/Features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:mybookly/core/utlis/styles.dart';

import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .2),
                  child: const BookImage(imageurl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXl2ubRQLVCm5Kz1CZI68adzNmLzC-Ui3CBCB8LdyJ&s',),
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
                  style: Styles.textStyle18.copyWith(
                      color: const Color.fromARGB(255, 121, 117, 117),
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 18,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BookAction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBookListView()
              ],
            ),
          ),
        )
      ],
    );
  }
}
