import 'package:flutter/material.dart';

class EmptyData extends StatelessWidget {
  const EmptyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/boat.png',
            height: 250,
          ),
          const SizedBox(height: 16),
          const Text(
            'Empty',
            style: TextStyle(
              color: Color(0xff007EDE),
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Add your first watercraft',
            style: TextStyle(
              color: Color(0xffFFF5F2),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
