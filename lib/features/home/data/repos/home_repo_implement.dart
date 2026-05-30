import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturebooks() async {
    const kBaseUrl = "https://www.googleapis.com/books/v1/volumes?";
    const endPoint =
        "q=arabian+nights&key=AIzaSyDizIQICxTIKz_hAQ5vufv422IoGk0gYVg";
    try {
      var res = await ApiService().get(baseUrl: kBaseUrl, endPoint: endPoint);
      List<BookModel> books = [];
      for (var item in res["items"]) {
        books.add(BookModel.fromJson(json: item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerError.fromDioException(dioException: e));
      } else {
        return left(
          ServerError(
            errorMessage: "Opps There was an Error, Please try again",
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetbooks() {
    throw UnimplementedError();
  }
}
