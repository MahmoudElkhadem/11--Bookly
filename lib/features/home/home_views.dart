import 'package:bookly/features/home/custom_app_bar.dart';
import 'package:bookly/features/styles.dart';
import 'package:bookly/features/view/custom_list_book.dart';
import 'package:bookly/features/widget/best_seller_list.dart';
import 'package:flutter/material.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CustomAppBar(),
                ),
                CustomListBook(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Best Seller',style: Styles.titleSize30),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: BestSellerList(),
            ),
          )
        ],
      )
    );
  }
}

