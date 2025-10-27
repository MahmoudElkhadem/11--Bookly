import 'package:flutter/material.dart';

class CustomBook extends StatelessWidget {
  const CustomBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 1.2 / 2,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images-٦.jpeg'))),
          ),
        ),
      ),
    );
  }
}
