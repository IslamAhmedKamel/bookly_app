// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/core/utils/router.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rating.dart';
import 'package:flutter/material.dart';

import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  final BookModel bookModel;

  const BestSellerItem({super.key, required this.bookModel});
  // void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(AppRoute.detailsViewPath, extra: bookModel);
        },
        child: Container(
          height: 130,
          padding: EdgeInsets.only(bottom: 10, right: 10),
          child: Row(
            children: [
              BookImage(bookModel: bookModel),

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
                        CustomRating(bookModel: bookModel),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
