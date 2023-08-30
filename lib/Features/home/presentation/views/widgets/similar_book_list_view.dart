import 'package:flutter/cupertino.dart';

import 'book_image.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: BookImage(imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXl2ubRQLVCm5Kz1CZI68adzNmLzC-Ui3CBCB8LdyJ&s',),
            );
          }),
    );
  }
}
