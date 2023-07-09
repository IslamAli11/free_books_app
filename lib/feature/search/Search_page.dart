import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books_app/feature/search/search_cubit/search_cubit.dart';
import 'package:free_books_app/feature/search/widget/default_text_form_field.dart';
import '../../core/widget/default_list_item.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<SearchCubit,SearchState>(
          builder: (context,state){
            return  Column(
              children: [
                 SizedBox(
                  height:height * .05 ,
                ),
              DefaultTextFormField(),
                if(state is SearchBookSuccess)
               ListView.builder(
                   itemBuilder:(context,index){
                     return DefaultListItem(bookModel:state.books[index],);
                   },
                 itemCount: state.books.length,
               ),

              ],
            );
          },

        ),
      ),
    );
  }
}


