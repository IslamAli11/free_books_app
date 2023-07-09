import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'default_rating.dart';

class BookDetails extends StatelessWidget {
  const BookDetails(
      {Key? key,
      required this.bookName,
      required this.author,
      required this.rating,
      required this.countRating})
      : super(key: key);
  final String? bookName;
  final String? author;
  final num? rating;
  final num? countRating;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Text(
              bookName!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),

          DefaultRating(
            author: author,
            numberRating: countRating,
            rating: rating,
          ),
        ],
      ),
    );
  }
}
