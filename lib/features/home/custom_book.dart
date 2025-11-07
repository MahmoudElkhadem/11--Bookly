import 'package:flutter/material.dart';

class CustomBook extends StatelessWidget {
  const CustomBook({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 1.2 / 2,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imageUrl
                    ))),
          ),
        ),
      ),
    );
  }
}
