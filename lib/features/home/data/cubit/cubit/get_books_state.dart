part of 'get_books_cubit.dart';

@immutable
sealed class GetBooksState {}

final class GetBooksInitial extends GetBooksState {}

final class GetBooksSuccese extends GetBooksState {
  final List<BookModel> booskList;

  GetBooksSuccese({required this.booskList});
}

final class GetBooksFailure extends GetBooksState {
  final String errMessage;

  GetBooksFailure({required this.errMessage});
}

final class GetBooksLoading extends GetBooksState {}
