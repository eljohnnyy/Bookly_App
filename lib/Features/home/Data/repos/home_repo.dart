import 'package:dartz/dartz.dart';
import 'package:mybookly/Features/home/Data/models/book_model/book_model.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo{
Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
Future<Either<Failure, List<BookModel>>>fetchFeaturedBooks();

}