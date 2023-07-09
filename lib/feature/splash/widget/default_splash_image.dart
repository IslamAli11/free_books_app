import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultSplashImage extends StatelessWidget {
  const DefaultSplashImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(
          'assets/images/books.png',
          height: height * .3,
          width: width * .8,
        ),
        Text(
          'Give your self pause of time to relax.... let\'s read',
          textAlign: TextAlign.center,
          style: const TextStyle().copyWith(color: Colors.white, fontSize: 25),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          textAlign: TextAlign.center,
          'Read your favourite Books in free time',
          style: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 25,
          ),
        ) ,
      ],
    );
  }
}
