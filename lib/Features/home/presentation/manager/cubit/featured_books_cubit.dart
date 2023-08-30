import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mybookly/Features/home/Data/models/book_model/book_model.dart';
import 'package:mybookly/Features/home/Data/repos/home_repo.dart';
import 'package:mybookly/core/errors/failure.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    var result=await homeRepo.fetchFeaturedBooks();
    result.fold((failure)  {

      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books)  {
emit(FeaturedBooksSuccess(books));
    });
  }
}