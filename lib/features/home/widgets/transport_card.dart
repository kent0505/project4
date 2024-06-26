import 'package:flutter/material.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/models/transport.dart';

class TransportCard extends StatelessWidget {
  const TransportCard({super.key, required this.transport});

  final Transport transport;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      decoration: BoxDecoration(
        color: const Color(0xff4F4F4F).withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  transport.type,
                  style: const TextStyle(
                    color: AppColors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 52,
                  height: 1,
                  color: Colors.white,
                ),
                Text(
                  transport.condition,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Center(
              child: Text(
                transport.count,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 100,
            child: Row(
              children: [
                Spacer(),
                AnimatedRotation(
                  // turns: expanded ? 1 / 2 : 1,
                  turns: 1,
                  duration: Duration(milliseconds: 300),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.icon,
                    ),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
