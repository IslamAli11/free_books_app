import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/service_locator.dart';
import '../../data/repo/app_repo_impl.dart';
import '../search_cubit/search_cubit.dart';

class DefaultTextFormField extends StatelessWidget {
  DefaultTextFormField({Key? key}) : super(key: key);
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      onTap: () {},
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Text musn\'t be empty';
        }
      },
      keyboardType: TextInputType.text,
      controller: searchController,
      decoration:  InputDecoration(
        labelText: 'search',
        labelStyle: TextStyle(color: Colors.teal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10) ,
        ),
      ),
      onFieldSubmitted: (value) {
        SearchCubit(getIt.get<AppRepoImpl>())
            .fetchSearchBooks(searchValue: value);
      },
    );
  }
}
