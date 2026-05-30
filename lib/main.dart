import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ConstantHelper.kPrimaryColor,
      ),
      initialRoute: HomeView.homeId,
      routes: {
        SplashView.splashId: (context) => SplashView(),
        HomeView.homeId: (context) => HomeView(),
      },
    );
  }
}
