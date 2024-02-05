
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';

import 'package:bookly/features/home/data/models/book_model.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
   try {
     var response = await apiService.get(endPoint: "volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:Programming");
     List<BookModel> newBooks = [];
     for(var item in response["items"]){
       newBooks.add(BookModel.fromJson(item));
     }
     return Right(newBooks);
   } on Exception catch (e) {
     if(e is DioException){
       return Left(ServerFailure(e.toString()));
     }
   }
   
   
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}