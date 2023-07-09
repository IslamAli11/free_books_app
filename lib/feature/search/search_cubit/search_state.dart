part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}
 class SearchBooksLoading extends SearchState{}
 class SearchBookFailure extends SearchState{
  final String errorMessage;
  SearchBookFailure(this.errorMessage);
 }
 class SearchBookSuccess extends SearchState{
  final List<BookModel>books;
  SearchBookSuccess(this.books);
 }