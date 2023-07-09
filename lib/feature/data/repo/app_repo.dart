import 'package:dartz/dartz.dart';


import '../../../core/model/book_model/book_model.dart';
import '../../../core/utils/errors/failures.dart';

abstract class AppRepo {
  Future<Either<Failure, List<BookModel>>> fetchSportsBooks();
  Future<Either<Failure, List<BookModel>>> fetchBusinessBooks();
  Future<Either<Failure, List<BookModel>>> fetchScienceBooks();
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
  {required String searchValue}
      );
}