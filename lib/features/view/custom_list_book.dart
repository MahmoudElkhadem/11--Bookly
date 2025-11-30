import 'package:bookly/cubits/featured/featured_cubit.dart';
import 'package:bookly/features/home/custom_book.dart';
import 'package:bookly/features/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListBook extends StatelessWidget {
  const CustomListBook({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubit,FeaturedState>(
      builder: (context, state) {
       if (state is FeaturedSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  CustomBook(
                imageUrl:
                state.books[index].volumeInfo.imageLinks.thumbnail,
              );
            },
          ),
        );
       }
       else if(state is FeaturedFailure){
        return Text(state.errMessage, style: Styles.titleSize30,);
       }
       else{
        return Center(child: CircularProgressIndicator());
       }
        
      },
    );
  }
}
