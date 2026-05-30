import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implement.dart';
import 'package:flutter/material.dart';

part 'programming_state.dart';

class NewsetCubit extends Cubit<NewsetState> {
  NewsetCubit() : super(NewsetInitial());
  Future<void> fethNewset() async {
    emit(NewsetLoading());
    var result = await HomeRepoImplement().fetchNewsetbooks();
    result.fold(
      (failure) {
        emit(NewsetFailure(errMesge: failure.errorMessage));
      },
      (book) {
        emit(NewsetSucces(books: book));
      },
    );
  }
}
