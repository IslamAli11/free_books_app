import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../search_cubit/search_cubit.dart';

class SearchBooksItem extends StatelessWidget {
  const SearchBooksItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit ,SearchState>(
      builder: (context, state) {
        if(state is SearchBookSuccess) {
          return InkWell(
            onTap: () {
              //GoRouter.of(context).push(AppRouter.bookDetailsView);
            },
            child: ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(state.books[index].volumeInfo.authors![0],style: TextStyle(color: Colors.white),);
              },
            ),
          );
        }else{
          return Container();
        }
      },
    );
  }
}