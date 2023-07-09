part of 'business_cubit.dart';

@immutable
abstract class BusinessBooksState {}

class BusinessBooksInitial extends BusinessBooksState {}


class BusinessBooksLoading extends BusinessBooksState {}

class BusinessBooksFailure extends BusinessBooksState {
  final String errMessage;

   BusinessBooksFailure(this.errMessage);
}

class BusinessBooksSuccess extends BusinessBooksState {
  final List<BookModel> books;

   BusinessBooksSuccess(this.books);
}
