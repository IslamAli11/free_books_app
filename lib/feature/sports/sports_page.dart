import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:free_books_app/core/utils/function/launch_url.dart';
import 'package:free_books_app/core/widget/default_list_item.dart';

import '../home/manager/sports_cubit/sports_cubit.dart';





class SportsPage extends StatelessWidget {
   SportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SportsCubit,SportsBooksState>(
      builder: (context,state){
        if(state is SportsBooksSuccess){
          return AnimationLimiter(
            child: ListView.builder(
              itemCount:state.books.length,
              itemBuilder: (BuildContext context, int index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 500),
                  child:  SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: InkWell(
                        onTap: ()async{
                         await launchCustomUr(context,state.books[index].volumeInfo.previewLink!);
                        },
                        child: DefaultListItem(
                          bookModel:state.books[index],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }else{
          return const Center(child: CircularProgressIndicator());
        }

      },
    );
  }
}








