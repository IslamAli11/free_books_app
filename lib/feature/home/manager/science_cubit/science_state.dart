part of 'science_cubit.dart';

@immutable
abstract class ScienceBooksState {}

class ScienceBooksInitial extends ScienceBooksState {}



class ScienceBooksLoading extends ScienceBooksState {}

class ScienceBooksFailure extends ScienceBooksState {
  final String errMessage;

  ScienceBooksFailure(this.errMessage);
}

class ScienceBooksSuccess extends ScienceBooksState {
  final List<BookModel> books;

  ScienceBooksSuccess(this.books);
}