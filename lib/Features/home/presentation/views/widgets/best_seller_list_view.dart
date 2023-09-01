
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mybookly/core/widgets/custom_error_widget.dart';

import '../../view_model/cubit/newset_books_cubit.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if(state is NewsetBooksSuccess){
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const  EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(books: state.books[index],),
              );
            });}
            else if(state is NewsetBooksFailure){
         return     CustomErrorWidget(errMessage: state.errMessage);

            }
            else{
              return const Center(child: CircularProgressIndicator(),);
            }
      },
    );
  }
}
