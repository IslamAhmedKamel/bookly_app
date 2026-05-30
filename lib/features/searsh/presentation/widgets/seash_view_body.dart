import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/searsh/presentation/manger/search_cubit/cubit/search_cubit.dart';
import 'package:bookly_app/features/searsh/presentation/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeashViewBody extends StatelessWidget {
  const SeashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),

          TextField(
            decoration: InputDecoration(
              hintText: "Searsh",
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            onSubmitted: (value) {
              // BlocProvider<SearchCubit>.of(context).;
              BlocProvider.of<SearchCubit>(
                context,
              ).searchBooksWithTitle(title: value);
            },
          ),
          const SizedBox(height: 6),

          Text("Reasult :", style: StylesHelper.textStyle22),

          Expanded(
            child: SearchResult(),
          ),
        ],
      ),
    );
  }
}
