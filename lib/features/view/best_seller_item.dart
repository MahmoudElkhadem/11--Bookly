import 'package:bookly/cubits/newset/newset_cubit.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/styles.dart';
import 'package:bookly/features/widget/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key,required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetCubit,NewsetState>(
      builder: (context, state) { 
        return GestureDetector(
        onTap: () => GoRouter.of(context).push('/bookDetails', extra: bookModel),
        child: Row(
          children: [
            SizedBox(
              height: 100,
              child: AspectRatio(
                aspectRatio: 1.2 / 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                      image:  DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            bookModel.volumeInfo.imageLinks.thumbnail
                            ))),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title! ,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.titleMedium,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(bookModel.volumeInfo.categories![0]),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        bookModel.volumeInfo.pageCount.toString(),
                        style: Styles.titleMedium,
                      ),
                      Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo.pageCount!,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
      }
    );
  }
}
