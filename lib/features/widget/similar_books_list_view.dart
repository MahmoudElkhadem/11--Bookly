import 'package:bookly/cubits/similer/similer_cubit.dart';
import 'package:bookly/features/home/custom_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerCubit,SimilerState>(
      builder: (context, state) { 
        if(state is SimilerSuccess){
        return SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomBook(
              imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
            );
          },
        ),
      );
    }
    else if(state is SimilerFailure){
      return Text(state.errMessage);
    }
    else{
      return Center(
        child: CircularProgressIndicator(),
      );
    }
      }
    );
  }
}
