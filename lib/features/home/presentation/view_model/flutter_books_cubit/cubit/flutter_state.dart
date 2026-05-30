part of 'flutter_cubit.dart';

@immutable
sealed class FlutterState {}

final class FlutterInitial extends FlutterState {}

final class FlutterBooksSuccese extends FlutterState {
  final List<BookModel> books;

  FlutterBooksSuccese({required this.books});
}

final class FlutterBooksFailure extends FlutterState {
  final String errMesge;

  FlutterBooksFailure({required this.errMesge});
}

final class FlutterBooksLoading extends FlutterState {}
