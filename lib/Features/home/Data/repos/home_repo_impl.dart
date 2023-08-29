import 'package:dartz/dartz.dart';
import 'package:mybookly/Features/home/Data/models/book_model/book_model.dart';
import 'package:mybookly/Features/home/Data/repos/home_repo.dart';
import 'package:mybookly/core/errors/failure.dart';

import '../../../../core/utlis/api_service.dart';

class HomeRepoImpl implements HomeRepo{
 
    final ApiService apiService;

  HomeRepoImpl(this.apiService);
   @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async{

      try{       
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
              books.add(BookModel.fromJson(item));
      }
      return right(books);
      }
        catch (e) {
         return left(ServerFailure());
        }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchNewsetBooks
    throw UnimplementedError();
  }}



