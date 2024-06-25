import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/config/app_colors.dart';
import '../../core/widgets/buttons/primary_button.dart';

class FirstCardPage extends StatelessWidget {
  const FirstCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 51),
            Text(
              'Let\'s go',
              style: TextStyle(
                color: AppColors.txt,
                fontSize: 32,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 34),
            Text(
              'What is your mode of water transportation',
              style: TextStyle(
                color: AppColors.txt,
              ),
            ),
            const SizedBox(height: 9),
            const TransportType(),
            const SizedBox(height: 24),
            Text(
              'How many do you have',
              style: TextStyle(
                color: AppColors.txt,
              ),
            ),
            const SizedBox(height: 9),
            const TransportType(),
            const SizedBox(height: 24),
            Text(
              'What is the condition of your vehicle',
              style: TextStyle(
                color: AppColors.txt,
              ),
            ),
            const SizedBox(height: 9),
            const TransportType(),
            const Spacer(),
            PrimaryButton(
              title: 'Continue',
              onPressed: () {},
            ),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}

class TransportType extends StatefulWidget {
  const TransportType({super.key});

  @override
  State<TransportType> createState() => _TransportTypeState();
}

class _TransportTypeState extends State<TransportType> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoButton(
          onPressed: () {
            setState(() {
              expanded = !expanded;
            });
          },
          padding: EdgeInsets.zero,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.expansion,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Spacer(),
                AnimatedRotation(
                  turns: expanded ? 1 / 2 : 1,
                  duration: const Duration(milliseconds: 300),
                  child: const RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.icon,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),

        // if expanded

        if (expanded) ...[
          const SizedBox(height: 8),
          const _ExpandedCard(title: 'Boat'),
        ],
      ],
    );
  }
}

class _ExpandedCard extends StatelessWidget {
  const _ExpandedCard({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: AppColors.expansion,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppColors.blue,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
