import 'dart:developer';

import 'package:bookly_app/features/home/presentation/view_model/book_model.dart';
import 'package:dio/dio.dart';

class GetAllBooks {
  Dio dio = Dio();
  List<BookModel> booklyList = [];
  Future<List<BookModel>> getAllBooks() async {
    try {
      Response response = await dio.get(
        "https://www.googleapis.com/books/v1/volumes?q=arabian+nights&key=AIzaSyC99q6Q4GJFJxipuXIkWnGW1rnkKc3dvWI",
      );
      for (var book in response.data['items']) {
        booklyList.add(BookModel.fromJson(json: book));
      }
      log('$booklyList');
      return booklyList;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
    // return [];
  }
}
