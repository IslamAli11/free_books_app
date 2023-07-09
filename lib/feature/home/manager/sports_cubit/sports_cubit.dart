import 'package:bloc/bloc.dart';
import 'package:free_books_app/core/model/book_model/book_model.dart';
import 'package:meta/meta.dart';
import '../../../data/repo/app_repo.dart';

part 'sports_state.dart';

class SportsCubit extends Cubit<SportsBooksState> {
  SportsCubit(this.appRepo) : super(SportsBooksInitial());

  final AppRepo appRepo;

  Future<void> fetchSportsBooks() async {
    emit(SportsBooksLoading());
    var result = await appRepo.fetchSportsBooks();
    print(result);
    result.fold((failure) {
      emit(SportsBooksFailure(failure.errMessage));
    }, (books) {
      emit(SportsBooksSuccess(books));
    });
  }

}
