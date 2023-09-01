
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mybookly/core/widgets/custom_error_widget.dart';

import '../../view_model/cubit/featured_books_cubit.dart';
import 'book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            physics:const BouncingScrollPhysics(),
            itemCount: state.books.length,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 8),
                  child: BookImage(imageurl: state.books[index].volumeInfo.imageLinks?.thumbnail??'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXl2ubRQLVCm5Kz1CZI68adzNmLzC-Ui3CBCB8LdyJ&s',),
                );
              }),
        );}
        else if(state is FeaturedBooksFailure){
return CustomErrorWidget(errMessage: state.errMessage);
        }
        else{
          return const  Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
