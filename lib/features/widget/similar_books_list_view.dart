import 'package:bookly/features/home/custom_book.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBook(
            imageUrl: 'https://images.pexels.com/photos/19975990/pexels-photo-19975990.jpeg?_gl=1*1myammf*_ga*MTk2NjA3MzY1Ny4xNzI1NTU4MzM4*_ga_8JE65Q40S6*czE3NjI1NTE0NTAkbzExJGcxJHQxNzYyNTUxNDU2JGo1NCRsMCRoMA..',
          );
        },
      ),
    );
  }
}
