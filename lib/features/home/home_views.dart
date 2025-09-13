import 'package:bookly/features/home/custom_app_bar.dart';
import 'package:bookly/features/styles.dart';
import 'package:bookly/features/view/best_seller_list.dart';
import 'package:bookly/features/view/custom_list_book.dart';
import 'package:flutter/material.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            CustomListBook(),
            Text('Best Seller',style: Styles.titleSize30),
            BestSellerList(),
          ],
        ),
      ),
    );
  }
}