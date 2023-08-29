import 'package:dartz/dartz.dart';
import 'package:mybookly/Features/home/Data/models/book_model/book_model.dart';
import 'package:mybookly/Features/home/Data/repos/home_repo.dart';
import 'package:mybookly/core/errors/failure.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() {
    // TODO: implement fetchNewsetBooks
    throw UnimplementedError();
  }

}