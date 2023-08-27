
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mybookly/core/utlis/app_router.dart';


import '../../../../../constants.dart';
import '../../../../../core/utlis/assets.dart';
import '../../../../../core/utlis/styles.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){ GoRouter.of(context).push(AppRouter.kbookdetails);},
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AssetsData.testImage)))),
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
                      child:  Text(
                        'Harry Potter and the Goblet of Fire',
                        style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                      ),),
                   const   SizedBox(height: 3,),
                     const Text('J.K Rowling',style: Styles.textStyle14,),
                         const   SizedBox(height: 3,),
                     Row(
                      children: [
            Text('19.99 e ',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
           const  Spacer(),
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
