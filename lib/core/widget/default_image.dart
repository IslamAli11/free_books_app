import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultImage extends StatelessWidget {
  const DefaultImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(imageUrl)),),
    );
  }
}
