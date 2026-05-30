import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.3 / 2.1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(
                    bookModel.image ?? ConstantHelper.kTestImageFromNet,
                  ),
                  fit: BoxFit.fill,
                ),
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
                  bookModel.subTitle ?? "nothing",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19.99 \$",
                      // bookModel.
                      // bookModel.averageRating.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.yellow),
                        // Icon(
                        //    FaIcon(FontAwesomeIcons.star, size: 10),
                        // ),
                        Text(
                          "${bookModel.averageRating ?? 4.8}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "(${bookModel.pageCount ?? 2390})",
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
