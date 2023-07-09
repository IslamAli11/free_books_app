import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books_app/feature/splash/widget/default_splash_image.dart';
import 'package:free_books_app/feature/splash/widget/text_button_view.dart';

import '../../home/manager/sports_cubit/sports_cubit.dart';

class SplashAnimation extends StatelessWidget {
  const SplashAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: BlocBuilder<SportsCubit, SportsBooksState>(
        builder: (context, state) {
          if (state is SportsBooksSuccess) {
            return Column(
              children: [
                SizedBox(
                  height: height * .09,
                ),
                const DefaultSplashImage(),
                SizedBox(
                  height: height * .27,
                ),
                const TextButtonView()
              ],
            );
          }  else {
            return Container();
          }
        },
      ),
    );
  }
}
