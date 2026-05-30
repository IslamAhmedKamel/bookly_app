import 'package:bookly_app/features/home/presentation/view_model/programming_cubit/cubit/programming_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetCubit, NewsetState>(
      builder: (context, state) {
        if (state is NewsetSucces) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) =>
                BestSellerItem(bookModel: state.books[index]),
          );
        } else if (state is NewsetFailure) {
          return SliverFillRemaining(
            child: Center(child: Text(state.errMesge)),
          );
        } else if (state is NewsetLoading) {
          return SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }
        return SliverFillRemaining(child: SizedBox());
      },
    );
  }
}
