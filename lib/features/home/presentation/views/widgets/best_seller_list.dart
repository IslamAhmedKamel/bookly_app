import 'package:bookly_app/features/home/data/cubit/cubit/get_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBooksCubit, GetBooksState>(
      builder: (context, state) {
        if (state is GetBooksSuccese) {
          return ListView.builder(
            itemBuilder: (context, index) =>
                BestSellerItem(bookModel: state.booskList[index]),
            itemCount: state.booskList.length,
          );
        } else if (state is GetBooksLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is GetBooksFailure) {
          return Center(child: Text(state.errMessage));
        }
        return SizedBox();
      },
    );
  }
}
