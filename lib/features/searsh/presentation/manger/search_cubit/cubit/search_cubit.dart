import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/searsh/data/repos/search_implement_repo.dart';
import 'package:flutter/material.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  Future<void> searchBooksWithTitle({required String title}) async {
    emit(SearchBooksLoading());
    var result = await SearchImplementRepo().searchBookWithTitle(title: title);
    result.fold(
      (failure) {
        emit(SearchBooksFailure(errMesge: failure.errorMessage));
      },
      (book) {
        emit(SearchBooksSuccese(books: book));
      },
    );
  }
}
