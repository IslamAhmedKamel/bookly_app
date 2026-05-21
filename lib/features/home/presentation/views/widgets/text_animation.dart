import 'package:flutter/material.dart';

class TextAnimation extends StatelessWidget {
  const TextAnimation({
    super.key,
    required Animation<Offset> slidingAnimation,
    required AnimationController controller,
  }) : _slidingAnimation = slidingAnimation,
       _controller = controller;

  final Animation<Offset> _slidingAnimation;
  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SlideTransition(
        position: _slidingAnimation,
        child: FadeTransition(
          opacity: _controller,
          child: Text(
            "Read Books free",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
