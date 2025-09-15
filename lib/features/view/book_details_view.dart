import 'package:bookly/features/home/custom_book.dart';
import 'package:bookly/features/widget/book_details_view_body.dart';
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
              padding:  EdgeInsets.symmetric(horizontal: width * .25 ),
              child: CustomBook(),
            ),
          ],
        ),  
      ),
    );
  }
}