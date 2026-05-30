import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturebooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetbooks() {
    throw UnimplementedError();
  }
}
