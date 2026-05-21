import 'package:bookly_app/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsHelper.logoImage, width: 50),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
        ),
      ],
    );
  }
}
