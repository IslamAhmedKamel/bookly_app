import 'package:bookly_app/core/utils/router.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemCategory extends StatelessWidget {
  final BookModel bookModel;

  const ItemCategory({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRoute.detailsViewPath, extra: bookModel);
      },
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(10),
        child: AspectRatio(
          aspectRatio: 1.3 / 2.1,
          child: CachedNetworkImage(
            imageUrl:
                "https://covers.openlibrary.org/b/id/${bookModel.id}-L.jpg",
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
