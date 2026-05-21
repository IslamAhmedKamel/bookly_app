import 'package:bookly_app/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.9 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsHelper.testImage),
          ),
        ),
      ),
    );
  }
}
