import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/core/utils/router.dart';
import 'package:bookly_app/features/home/presentation/view_model/flutter_books_cubit/cubit/flutter_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/programming_cubit/cubit/programming_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        BlocProvider(create: (context) => FlutterCubit()..fethFlutterBooks()),
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
