import 'package:flutter/material.dart';
import 'package:mybookly/core/utlis/styles.dart';


import 'custom_app_bar.dart';

import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [CustomAppBar(), Padding(
        padding: EdgeInsets.only(left: 14),
        child: FeaturedBooksListView(),
      ),
      SizedBox(height: 50,),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Text('Best Seller',style: Styles.titleMedium,),
      )
      ],
    );
  }
}
