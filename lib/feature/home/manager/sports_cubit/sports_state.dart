part of 'sports_cubit.dart';

@immutable
abstract class SportsBooksState {}

class SportsBooksInitial extends SportsBooksState {}

class SportsBooksLoading extends SportsBooksState {}

class SportsBooksFailure extends SportsBooksState {
  final String errMessage;

  SportsBooksFailure(this.errMessage);
}

class SportsBooksSuccess extends SportsBooksState {
  final List<BookModel> books;

  SportsBooksSuccess(this.books);
}