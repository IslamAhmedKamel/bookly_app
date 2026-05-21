import 'package:bookly_app/core/utils/assets_helper.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsHelper.logoImage),
        Align(child: Text("Read Free Books", style: StylesHelper.textStyle20)),
      ],
    );
  }
}
