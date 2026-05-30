import 'package:bookly_app/features/home/presentation/views/widgets/item_category.dart';
import 'package:flutter/material.dart';

class ItemsListCategory extends StatelessWidget {
  const ItemsListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ItemCategory(),
        itemCount: 5,
      ),
    );
  }
}
