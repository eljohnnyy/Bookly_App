import 'package:flutter/cupertino.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView.builder(
        shrinkWrap: true,
        physics:const  NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index){
        return const Padding(
          padding:EdgeInsets.symmetric(vertical: 10),
          child:  BestSellerListViewItem(),
        );
      }),
    );
  }
}