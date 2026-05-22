import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/service/get_all_books.dart';
import 'package:bookly_app/features/home/presentation/view_model/book_model.dart';
import 'package:flutter/material.dart';

part 'get_books_state.dart';

class GetBooksCubit extends Cubit<GetBooksState> {
  GetBooksCubit() : super(GetBooksInitial());
  void getBesrSellerBooks() async {
    emit(GetBooksLoading());
    List<BookModel> books = [];
    try {
      books = await GetBestSellerBooksService().getAllBooks();
      emit(GetBooksSuccese(booskList: books));
    } on Exception catch (e) {
      emit(GetBooksFailure(errMessage: e.toString()));
    }
  }
}
