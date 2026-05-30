part of 'newset_cubit.dart';

@immutable
sealed class NewsetState {}

final class NewsetInitial extends NewsetState {}

final class NewsetSucces extends NewsetState {
  final List<BookModel> books;

  NewsetSucces({required this.books});
}

final class NewsetFailure extends NewsetState {
  final String errMesge;

  NewsetFailure({required this.errMesge});
}

final class NewsetLoading extends NewsetState {}
