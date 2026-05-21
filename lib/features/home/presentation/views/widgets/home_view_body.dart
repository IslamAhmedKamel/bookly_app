import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          // SizedBox(height: 15),
          // ItemsListCategory(),
          // SizedBox(height: 30),
          // Text("Best Seller", style: StylesHelper.textStyle20),
          // BestSellerItem(),
        ],
      ),
    );
  }
}
