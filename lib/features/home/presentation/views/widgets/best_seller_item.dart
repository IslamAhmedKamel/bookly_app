import 'package:bookly_app/core/utils/assets_helper.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      // child: Center(child: Text("flutter")),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AssetsHelper.testImage)),
            ),
          ),
        ],
      ),

      // Row(
      //   children: [
      //     AspectRatio(
      //       aspectRatio: 2 / 2.8,
      //       child: Container(
      //         margin: EdgeInsets.symmetric(horizontal: 4),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(6),
      //           image: DecorationImage(
      //             fit: BoxFit.fill,
      //             image: AssetImage(AssetsHelper.testImage),
      //           ),
      //         ),
      //       ),
      //     ),
      //     SizedBox(width: 30),
      //     Expanded(
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           SizedBox(
      //             width: MediaQuery.of(context).size.width * 0.4,
      //             child: Text(
      //               maxLines: 2,
      //               "Harry Potter and the Goblet of Fire ",
      //               style: StylesHelper.textStyle16,
      //             ),
      //           ),

      //           Text("J.K Rowling", style: TextStyle(color: Colors.grey)),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Text(
      //                 "19.99 \$",
      //                 style: TextStyle(fontWeight: FontWeight.bold),
      //               ),

      //               Row(
      //                 children: [
      //                   Icon(Icons.star, size: 16, color: Colors.yellow),
      //                   // Icon(
      //                   //    FaIcon(FontAwesomeIcons.star, size: 10),
      //                   // ),
      //                   Text(
      //                     "4.8",
      //                     style: TextStyle(fontWeight: FontWeight.bold),
      //                   ),
      //                   Text("(2390)", style: TextStyle(color: Colors.grey)),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
