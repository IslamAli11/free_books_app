import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books_app/constant.dart';
import 'package:free_books_app/core/utils/app_router.dart';
import 'package:free_books_app/core/utils/service_locator.dart';
import 'package:free_books_app/feature/data/repo/app_repo_impl.dart';


import 'bloc_observer.dart';
import 'core/utils/function/cache_helper.dart';
import 'core/utils/function/theme.dart';
import 'feature/home/manager/business_cubit/business_cubit.dart';
import 'feature/home/manager/home_cubit/home_cubit.dart';
import 'feature/home/manager/science_cubit/science_cubit.dart';
import 'feature/home/manager/sports_cubit/sports_cubit.dart';
import 'feature/search/search_cubit/search_cubit.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await CacheHelper.init();
  isDark = CacheHelper.getData(key: 'isDark');
  BlocOverrides.runZoned(
        () {
      runApp( MyApp(

      ));
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(
            create: (context) => SportsCubit(
                  getIt.get<AppRepoImpl>(),
                )..fetchSportsBooks()),
        BlocProvider(
            create: (context) => BusinessCubit(
                  getIt.get<AppRepoImpl>(),
                )..fetchBusinessBooks()),
        BlocProvider(
            create: (context) => ScienceCubit(
                  getIt.get<AppRepoImpl>(),
                )..fetchScienceBooks()),
        BlocProvider(
            create: (context) => SearchCubit(
              getIt.get<AppRepoImpl>(),
            )),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
  builder: (context, state) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme:HomeCubit.get(context).isDark? lightTheme() : darkTheme(),
      );
  },
),
    );
  }
}
