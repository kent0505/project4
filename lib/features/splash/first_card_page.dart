import 'package:flutter/material.dart';

import '../../core/widgets/buttons/primary_button.dart';
import 'widgets/title_text.dart';
import 'widgets/transport_condition.dart';
import 'widgets/transport_count.dart';
import 'widgets/transport_type.dart';

class FirstCardPage extends StatelessWidget {
  const FirstCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: const [
              SizedBox(height: 51),
              Center(
                child: Text(
                  'Let\'s go',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(height: 34),
              TitleText('Цhat type of your water transport?'),
              SizedBox(height: 9),
              TransportType(),
              SizedBox(height: 24),
              TitleText('How many do you have?'),
              SizedBox(height: 9),
              TransportCount(),
              SizedBox(height: 24),
              TitleText('What is the condition of your transport?'),
              SizedBox(height: 9),
              TransportCondition(),
              SizedBox(height: 144),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 64, left: 30, right: 30),
              child: PrimaryButton(
                title: 'Continue',
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
