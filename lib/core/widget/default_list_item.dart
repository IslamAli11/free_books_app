import 'package:flutter/cupertino.dart';
import 'package:free_books_app/core/model/book_model/book_model.dart';

import 'book_details.dart';
import 'default_image.dart';

class DefaultListItem extends StatelessWidget {
  const DefaultListItem({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Container(
                  height: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BookDetails(
                        bookName: bookModel.volumeInfo.title ?? '',
                        author:bookModel.volumeInfo.authors?[0]??'',
                        rating:bookModel.volumeInfo.averageRating??0,
                        countRating:bookModel.volumeInfo.ratingsCount??0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
