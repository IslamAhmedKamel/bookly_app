import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/presentation/view_model/book_model.dart';
import 'package:meta/meta.dart';

part 'get_books_state.dart';

class GetBooksCubit extends Cubit<GetBooksState> {
  GetBooksCubit() : super(GetBooksInitial());
}
