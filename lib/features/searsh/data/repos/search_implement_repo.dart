import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/searsh/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchImplementRepo implements SearchRepo {
  @override
  Future<Either<Failure, List<BookModel>>> searchBookWithTitle({
    required String title,
  }) async {
    // https://openlibrary.org/search.json?q=flutter&limit=10
    try {
      var reponse = await ApiService().get(
        // endPoint: "q=flutter&limit=10",
        endPoint: "q=${title.replaceAll(' ', '+')}&limit=10",
        // endPoint: "q=title:harry+potter&limit=10",
      );
      List<BookModel> books = [];
      for (var item in reponse["docs"]) {
        books.add(BookModel.fromJson(json: item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerError.fromDioException(dioException: e));
      } else {
        return left(
          ServerError(
            errorMessage: "Opps There was an Error, Please try later!!!",
          ),
        );
      }
    }
  }
}
