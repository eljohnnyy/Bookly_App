import 'package:flutter/material.dart';
import 'package:mybookly/core/utlis/styles.dart';


import '../../../../../core/utlis/assets.dart';
import 'custom_app_bar.dart';

import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.only(left: 24),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [CustomAppBar(), FeaturedBooksListView(),
        SizedBox(height: 50,),
        Text('Best Seller',style: Styles.textStyle18,),
        BestSellerListViewItem(),
        ],
      ),
    );
  }
}
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
            
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage)))),
            ),
        ),
      ],
    );
  }
}