import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultRating extends StatelessWidget {
  const DefaultRating(
      {Key? key,
      required this.author,
      required this.rating,
      required this.numberRating})
      : super(key: key);
  final String? author;
  final num? rating;
  final num? numberRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          author!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )),
        const SizedBox(width: 20,),
        Expanded(
          child: Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              const SizedBox(
                width: 5,
              ),
              Text('$rating'),
              const SizedBox(
                width: 5,
              ),
              Expanded(child: Text('($numberRating)'))
            ],
          ),
        )
      ],
    );
  }
}
