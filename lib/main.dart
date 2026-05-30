import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/core/utils/router.dart';
import 'package:bookly_app/features/home/presentation/view_model/newset_cubit/cubit/newset_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NewsetCubit()..fethNewset()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: ConstantHelper.kPrimaryColor,
        ),
        routerConfig: AppRoute.router,
      ),
    );
  }
}