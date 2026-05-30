import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/searsh/presentation/manger/search_cubit/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchBooksSuccese) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) =>
                BestSellerItem(bookModel: state.books[index]),
          );
        } else if (state is SearchBooksFailure) {
          return Center(child: Text(state.errMesge));
        }
         else if (state is SearchBooksLoading) {
          return Center(child: CircularProgressIndicator());
        }
        return Center(child: Text("No Results it"));
      },
    );
  }
}
