import 'package:bookly/features/home/custom_book.dart';
import 'package:bookly/features/styles.dart';
import 'package:bookly/features/widget/action_button.dart';
import 'package:bookly/features/widget/book_details_view_body.dart';
import 'package:bookly/features/widget/book_rating.dart';
import 'package:bookly/features/widget/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(slivers: [
      SliverFillRemaining(
          child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                BookDetailsViewBody(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .35),
                  child: CustomBook(),
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
                SimilarBooksListView()
              ],
            ),
          ),
        ),
      ))
    ]);
  }
}
