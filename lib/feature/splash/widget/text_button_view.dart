import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/app_router.dart';

class TextButtonView extends StatelessWidget {
  const TextButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Let\'s Start',
          style: const TextStyle().copyWith(fontSize: 30, color: Colors.white),
        ),
        const SizedBox(
          width: 5,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).replace(AppRouter.homePage);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            textDirection: TextDirection.rtl,
            size: 30,
            color: Colors.redAccent,
          ),
        ),
      ],
    );
  }
}
