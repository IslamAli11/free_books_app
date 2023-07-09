
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/utils/function/cache_helper.dart';




part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);


  int currentIndex = 0;


  bool isDark = false;

  void changeAppMode({bool? fromShared}) {
    emit(ChangeModeState());
    if (fromShared != null) {
      isDark = fromShared;

      emit(ChangeModeState());
    } else {

      isDark = !isDark;
      CacheHelper.saveData(key: 'isDark', value: isDark)!.then((value) {
        emit(ChangeModeState());
      });
    }
  }

  changeBottomNavBarr(int index) {

    currentIndex = index;
    emit(ChangeBottomNavBarrState());
  }

}
