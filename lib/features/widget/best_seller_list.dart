import 'package:bookly/cubits/newset/newset_cubit.dart';
import 'package:bookly/features/view/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetCubit,NewsetState>(
      builder : (context, state) {
        if(state is NewsetSuccess) {
        return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: state.books.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child:  BestSellerItem(
            bookModel: state.books[index] ,
          ),
        ),
      );
      }
      else if(state is NewsetFailure)
      {
        return Text(state.errMessage);
      }
       else {
       return Center(child: CircularProgressIndicator());
      }
      }
    );
  }
}
