import 'package:bookly/features/view/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) =>
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: BestSellerItem(),
        )
        ,);
  }
}