import 'package:bookly/features/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,color: Colors.yellow,),
        SizedBox(width: 6.3,),
        Text('4.8',style: Styles.titleSize16,),
        SizedBox(width: 5,),
        Text('(255)')
      ],
    );
  }
}