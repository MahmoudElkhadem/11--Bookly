import 'package:bookly/features/home/custom_book.dart';
import 'package:bookly/features/styles.dart';
import 'package:bookly/features/widget/action_button.dart';
import 'package:bookly/features/widget/book_details_view_body.dart';
import 'package:bookly/features/widget/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BookDetailsViewBody(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .28),
              child: CustomBook(),
            ),
            Text(
              'Ma la napoh beh',
              style: Styles.titleSize30,
            ),
            Text(
              'Sandara Serag',
              style: Styles.titleMedium
                  .copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 18),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 37),
            const ActionButton(),
          ],
        ),
      ),
    );
  }
}

