import 'package:bookly_app/features/searsh/presentation/manger/search_cubit/cubit/search_cubit.dart';
import 'package:bookly_app/features/searsh/presentation/widgets/seash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearshView extends StatelessWidget {
  const SearshView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SearchCubit(),
        child: SeashViewBody(),
      ),
    );
  }
}
