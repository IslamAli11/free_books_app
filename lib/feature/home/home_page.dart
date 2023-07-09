
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books_app/constant.dart';
import 'package:free_books_app/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

import 'manager/home_cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context,state){
        return  Scaffold(
          appBar: AppBar(
            title:Text(
                title[HomeCubit.get(context).currentIndex]
            ),
            actions: [
              IconButton(
                  onPressed:(){
                   GoRouter.of(context).push(AppRouter.searchPage);
                  },
                  icon:const Icon(Icons.search)
              ),
              IconButton(
                  onPressed:(){

                   HomeCubit.get(context).changeAppMode();

                  },
                  icon:const Icon(Icons.wb_sunny)
              ),
            ],
          ),
          body:screen[HomeCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: HomeCubit.get(context).currentIndex,

            onTap: (index){
              HomeCubit.get(context).changeBottomNavBarr(index);
            },
            items:bottomBarItem,
          ),
        );
      },
    );
  }
}
