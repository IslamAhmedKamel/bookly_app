import 'package:bookly_app/core/utils/assets_helper.dart';
import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';

import 'package:bookly_app/features/splash/presentation/views/widgets/text_animation.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slidingAnimation;
  @override
  void initState() {
    initTextAnimation();

    Future.delayed(ConstantHelper.duration, () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, HomeView.homeId);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsHelper.logoImage),
        TextAnimation(
          slidingAnimation: _slidingAnimation,
          controller: _controller,
        ),
      ],
    );
  }

  void initTextAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: ConstantHelper.duration,
    );
    _slidingAnimation = Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset.zero,
    ).animate(_controller);
    _controller.forward();
  }
}
