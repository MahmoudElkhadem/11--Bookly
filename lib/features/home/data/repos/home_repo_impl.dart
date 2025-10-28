import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
  try {
    var data = await apiService.get(endpoint: 'volumes?Filtering=free-ebooks& Sorting=newset&q=subject(programming)');
    
    List<BookModel> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    
    return right(books);

  } on Exception catch (e) {
    if(e is DioException){
    return left(ServerFailure.fromDioError(e));
    }
    return left( ServerFailure(e.toString()));

  }


  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
   try {
    var data = await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&q=subject(programming)');
    
    List<BookModel> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    
    return right(books);

  } on Exception catch (e) {
    if(e is DioException){
    return left(ServerFailure.fromDioError(e));
    }
    return left( ServerFailure(e.toString()));

  }
  }

}