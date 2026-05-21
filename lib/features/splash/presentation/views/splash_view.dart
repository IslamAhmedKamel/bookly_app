import 'package:bookly_app/features/splash/presentation/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const splashId = "splashId";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashViewBody());
  }
}
