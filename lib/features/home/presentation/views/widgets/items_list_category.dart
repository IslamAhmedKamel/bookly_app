import 'package:bookly_app/features/home/presentation/view_model/flutter_books_cubit/cubit/flutter_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/item_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsListCategory extends StatelessWidget {
  const ItemsListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlutterCubit, FlutterState>(
      builder: (context, state) {
        if (state is FlutterBooksSuccese) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ItemCategory(bookModel: state.books[index]),
              ),
            ),
          );
        } else if (state is FlutterBooksFailure) {
          return Center(child: Text(state.errMesge));
        } else if (state is FlutterBooksLoading) {
          return Center(child: CircularProgressIndicator());
        }
        return SizedBox();
      },
    );
  }
}
