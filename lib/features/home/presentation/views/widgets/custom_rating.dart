import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({
    super.key,
    required this.bookModel,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final BookModel bookModel;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star, size: 16, color: Colors.yellow),

        const SizedBox(width: 3),
        Text(
          "${bookModel.averageRating ?? 4.8}",

          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        const SizedBox(width: 3),
        Text(
          "(${bookModel.firstPublishYear ?? 2390})",

          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
