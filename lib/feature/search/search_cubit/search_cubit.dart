import 'package:bloc/bloc.dart';
import 'package:free_books_app/core/model/book_model/book_model.dart';
import 'package:meta/meta.dart';

import '../../data/repo/app_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.appRepo) : super(SearchInitial());

  final AppRepo appRepo;

  Future<void> fetchSearchBooks({required String searchValue}) async {
    emit(SearchBooksLoading());
    var result = await appRepo.fetchSearchBooks(searchValue: searchValue);
    print(result);
    result.fold((failure) {
      emit(SearchBookFailure(failure.errMessage));
    }, (books) {
      emit(SearchBookSuccess(books));
    });
  }


}
