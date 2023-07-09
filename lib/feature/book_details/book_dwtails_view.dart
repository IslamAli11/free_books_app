import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_books_app/core/model/book_model/book_model.dart';
class BookDetailsViewItem extends StatelessWidget {
  const BookDetailsViewItem({
    Key? key, required this.bookModel,
  }) : super(key: key);
   final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BookDetailsItem(bookModel: bookModel);
  }
}

class PreviewButton extends StatelessWidget {
  const PreviewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Preview',
            style: const TextStyle().copyWith(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ));
  }
}

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 170,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          bookModel.volumeInfo.imageLinks!.thumbnail),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            const PreviewButton(),
            SizedBox(
              height: 20,
            ),
            Text(
              bookModel.volumeInfo.description ?? '',
              style: TextStyle().copyWith(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
