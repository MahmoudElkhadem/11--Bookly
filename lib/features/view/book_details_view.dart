import 'package:bookly/cubits/similer/similer_cubit.dart';
import 'package:bookly/features/home/custom_book.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/styles.dart';
import 'package:bookly/features/widget/action_button.dart';
import 'package:bookly/features/widget/book_details_view_body.dart';
import 'package:bookly/features/widget/book_rating.dart';
import 'package:bookly/features/widget/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel,});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<SimilerCubit,SimilerState>(
      builder: (context,state ) {
        return CustomScrollView(slivers: [
         SliverFillRemaining(
            child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  BookDetailsViewBody(bookModel: bookModel),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .35),
                    child: CustomBook(
                      imageUrl: 'https://images.pexels.com/photos/19975990/pexels-photo-19975990.jpeg?_gl=1*1myammf*_ga*MTk2NjA3MzY1Ny4xNzI1NTU4MzM4*_ga_8JE65Q40S6*czE3NjI1NTE0NTAkbzExJGcxJHQxNzYyNTUxNDU2JGo1NCRsMCRoMA..' ,
                    ),
                  ),
                  Text(
                    'Ma la napoh beh',
                    style: Styles.titleSize30,
                  ),
                  Text(
                    'Sandara Serag',
                    style: Styles.titleMedium.copyWith(
                        color: Colors.grey, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 18),
                  BookRating(
                    rating: 5,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(height: 37),
                  const ActionButton(),
                  SizedBox(height: 50),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'You can also like',
                        style: Styles.titleSize16
                            .copyWith(fontWeight: FontWeight.w600),
                      )),
                  SizedBox(height: 16),
                  SimilarBooksListView(),
                ],
              ),
            ),
          ),
        ))
      ]);
      }
    );
  }
}
