import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 32),
        Center(
          child: Text(
            'News',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ],
    );
  }
}
