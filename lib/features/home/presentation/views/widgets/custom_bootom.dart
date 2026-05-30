import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backGroundColor,
    required this.textColor,
    this.borderRadius,
  });
  final BorderRadiusGeometry? borderRadius;
  final String text;
  final Color backGroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: borderRadius,
        ),
        child: TextButton(
          onPressed: () {},
          child: Center(
            child: Text(text, style: TextStyle(color: textColor)),
          ),
        ),
      ),
    );
  }
}
