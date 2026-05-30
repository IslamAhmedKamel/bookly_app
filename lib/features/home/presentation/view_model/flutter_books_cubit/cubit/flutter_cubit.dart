import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implement.dart';
import 'package:meta/meta.dart';

part 'flutter_state.dart';

class FlutterCubit extends Cubit<FlutterState> {
  FlutterCubit() : super(FlutterInitial());
  Future<void> fethFlutterBooks() async {
    emit(FlutterBooksLoading());
    var result = await HomeRepoImplement().fetchFlutterbooks();
    result.fold(
      (failure) {
        emit(FlutterBooksFailure(errMesge: failure.errorMessage));
      },
      (book) {
        emit(FlutterBooksSuccese(books: book));
      },
    );
  }
}
