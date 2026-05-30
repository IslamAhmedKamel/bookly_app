import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/datails_view_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DatailsViewBody(bookModel: bookModel));
  }
}
