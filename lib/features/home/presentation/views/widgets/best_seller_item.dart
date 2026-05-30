import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.only(bottom: 10, right: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: AspectRatio(
              aspectRatio: 1.3 / 2.1,
              child: CachedNetworkImage(
                imageUrl:
                    "https://covers.openlibrary.org/b/id/${bookModel.id}-L.jpg",
                fit: BoxFit.fill,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookModel.title ?? "مفيش عنوان هنا ",
                  style: StylesHelper.textStyle18.copyWith(
                    fontFamily: ConstantHelper.kSecondFont,
                  ),
                  maxLines: 2,
                ),
                Text(
                  bookModel.author ?? "nothing",
                  maxLines: 1,
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${bookModel.averageRating?.toDouble() ?? "5.2"}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.yellow),

                        // Icon(
                        //    FaIcon(FontAwesomeIcons.star, size: 10),
                        // ),
                        const SizedBox(width: 6),
                        Text(
                          "${bookModel.averageRating ?? 4.8}",

                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          "(${bookModel.firstPublishYear ?? 2390})",

                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
