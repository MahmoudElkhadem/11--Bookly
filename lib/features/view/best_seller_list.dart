import 'package:bookly/features/styles.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100,
          child: AspectRatio(
            aspectRatio: 1.2/2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
                image:const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images-٦.jpeg'))
              ),
            ),
          ),
        ),
        Column(
          children: [
            Text('Harry Potter and the Goblet of Fire',
            style: Styles.titleMedium,
            )
          ],
        )
          ],);
  }
}