import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_bootom.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/items_list_category.dart';
import 'package:flutter/material.dart';

class DatailsViewBody extends StatelessWidget {
  const DatailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.25,
            ),
            child: BookImage(bookModel: bookModel),
          ),
          const SizedBox(height: 12),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: Text(
              bookModel.title!,
              style: StylesHelper.textStyle22,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
          const SizedBox(height: 6),

          Align(
            child: Text(
              bookModel.author!,
              style: StylesHelper.textStyle16.copyWith(
                fontSize: 14,
                color: Colors.white.withValues(alpha: 0.5),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 6),

          CustomRating(
            bookModel: bookModel,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 6),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: SizedBox(
              height: 35,
              child: Row(
                children: [
                  CustomButton(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    backGroundColor: Colors.orange,
                    text: "Free Preview",
                    textColor: Colors.white,
                  ),

                  CustomButton(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    backGroundColor: Colors.white,
                    text: "${bookModel.averageRating}",
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: const SizedBox(height: 40)),
          Text("Best Seller", style: StylesHelper.textStyle22),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: const ItemsListCategory(),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
