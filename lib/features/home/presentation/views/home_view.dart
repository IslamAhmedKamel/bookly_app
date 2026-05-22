import 'package:bookly_app/features/home/data/cubit/cubit/get_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const homeId = "homeId";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetBooksCubit(),
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
