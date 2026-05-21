import 'package:bookly_app/core/utils/assets_helper.dart';
import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

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
                  image: AssetImage(AssetsHelper.testImage),
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
                  "Harry Potter and the Goblet of Fire",
                  style: StylesHelper.textStyle18.copyWith(
                    fontFamily: ConstantHelper.kSecondFont,
                  ),
                  maxLines: 2,
                ),
                Text("J.K Rowling", style: TextStyle(color: Colors.grey)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19.99 \$",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.yellow),
                        // Icon(
                        //    FaIcon(FontAwesomeIcons.star, size: 10),
                        // ),
                        Text(
                          "4.8",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("(2390)", style: TextStyle(color: Colors.grey)),
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
