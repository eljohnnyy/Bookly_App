import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mybookly/Features/home/Data/models/book_model/book_model.dart';
import 'package:mybookly/Features/home/presentation/views/widgets/book_image.dart';
import 'package:mybookly/core/utlis/app_router.dart';

import '../../../../../constants.dart';

import '../../../../../core/utlis/styles.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.books});
final BookModel books;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kbookdetails);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
        aspectRatio: 2.5/ 4,
        child: CachedNetworkImage(
        
          errorWidget: (context, url, error) =>const Icon(Icons.error,color: Colors.red,size: 32,),
          fit: BoxFit.fill,
          
          imageUrl: books.volumeInfo.imageLinks?.thumbnail??'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXl2ubRQLVCm5Kz1CZI68adzNmLzC-Ui3CBCB8LdyJ&s',),
      ),
         
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                    books.volumeInfo.title!,
                    maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine)
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                    books.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free ',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
