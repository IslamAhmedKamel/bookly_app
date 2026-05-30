import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:meta/meta.dart';

part 'newset_state.dart';

class NewsetCubit extends Cubit<NewsetState> {
  NewsetCubit() : super(NewsetInitial());
}
