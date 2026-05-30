import 'dart:developer';

import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetbooks() async {
    const endPoint = "q=programming&limit=10";
    try {
      var res = await ApiService().get(endPoint: endPoint);
      List<BookModel> books = [];
      for (var item in res["docs"]) {
        books.add(BookModel.fromJson(json: item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        log("$e");
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchFlutterbooks() async {
    const endPoint =
        "q=python&limit=10";
    try {
      var res = await ApiService().get(endPoint: endPoint);
      List<BookModel> books = [];
      for (var item in res["docs"]) {
        books.add(BookModel.fromJson(json: item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        log("$e");
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
