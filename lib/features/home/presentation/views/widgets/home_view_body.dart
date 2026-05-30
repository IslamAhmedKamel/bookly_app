import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/items_list_category.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(height: 15),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: const ItemsListCategory(),
                ),
                const SizedBox(height: 30),
                Text("Best Seller", style: StylesHelper.textStyle22),
                const SizedBox(height: 10),
              ],
            ),
          ),
          BestSellerList(),
        ],
      ),
    );
  }
}
