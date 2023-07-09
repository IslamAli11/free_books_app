import 'package:bloc/bloc.dart';
import 'package:free_books_app/core/model/book_model/book_model.dart';
import 'package:meta/meta.dart';

import '../../../data/repo/app_repo.dart';


part 'science_state.dart';

class ScienceCubit extends Cubit<ScienceBooksState> {
  ScienceCubit(this.appRepo) : super(ScienceBooksInitial());

  final AppRepo appRepo;

  Future<void> fetchScienceBooks() async {
    emit(ScienceBooksLoading());
    var result = await appRepo.fetchScienceBooks();
    result.fold((failure) {
      emit(ScienceBooksFailure(failure.errMessage));
    }, (books) {
      emit(ScienceBooksSuccess(books));
    });
  }


}
