import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../core/model/book_model/book_model.dart';
import '../../../data/repo/app_repo.dart';


part 'business_state.dart';

class BusinessCubit extends Cubit<BusinessBooksState> {
  BusinessCubit(this.appRepo) : super(BusinessBooksInitial());

  final AppRepo appRepo;

  Future<void> fetchBusinessBooks() async {
    emit(BusinessBooksLoading());
    var result = await appRepo.fetchBusinessBooks();
    result.fold((failure) {
      emit(BusinessBooksFailure(failure.errMessage));
    }, (books) {
      emit(BusinessBooksSuccess(books));
    });
  }
}
