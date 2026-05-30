part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchBooksSuccese extends SearchState {
  final List<BookModel> books;

  SearchBooksSuccese({required this.books});
}

final class SearchBooksFailure extends SearchState {
  final String errMesge;

  SearchBooksFailure({required this.errMesge});
}

final class SearchBooksLoading extends SearchState {}
