import 'package:bookly/features/styles.dart';
import 'package:bookly/features/widget/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

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
        SizedBox(width: 30,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text('Harry Potter and the Goblet of Fire',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.titleMedium,
                ),
              ),
              SizedBox(height: 3,),
              Text('J.K Rowling'),
              SizedBox(height: 3,),
              Row(
                children: [
                  Text('19.99 \$' ,style: Styles.titleMedium,),
                  Spacer(),
                  BookRating(),
                ],
              )
            ],
          ),
        )
          ],);
  }
}