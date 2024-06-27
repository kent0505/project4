import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/config/app_colors.dart';
import '../../splash/widgets/your_version_field.dart';

class AddTransportType extends StatefulWidget {
  const AddTransportType({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<AddTransportType> createState() => _AddTransportTypeState();
}

class _AddTransportTypeState extends State<AddTransportType> {
  bool expanded = false;

  void onTap(String type) {
    setState(() {
      expanded = false;
      widget.controller.text = type;
    });
  }

  bool getCurrent(String type) {
    return widget.controller.text == type;
  }

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
                const SizedBox(width: 40),
                const Spacer(),
                Text(
                  widget.controller.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
        if (expanded) ...[
          const SizedBox(height: 8),
          _ExpandedCard(
            title: 'Boat',
            current: getCurrent('Boat'),
            onPressed: () {
              onTap('Boat');
            },
          ),
          const SizedBox(height: 8),
          _ExpandedCard(
            title: 'Yachts',
            current: getCurrent('Yachts'),
            onPressed: () {
              onTap('Yachts');
            },
          ),
          const SizedBox(height: 8),
          _ExpandedCard(
            title: 'Air cushion',
            current: getCurrent('Air cushion'),
            onPressed: () {
              onTap('Air cushion');
            },
          ),
          const SizedBox(height: 8),
          _ExpandedCard(
            title: 'Jet ski',
            current: getCurrent('Jet ski'),
            onPressed: () {
              onTap('Jet ski');
            },
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const SizedBox(width: 7),
              Text(
                'Your version',
                style: TextStyle(
                  color: AppColors.txt,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          YourVersionField(
            onSubmitted: (value) {
              onTap(value);
              FocusManager.instance.primaryFocus?.unfocus();
            },
          ),
        ],
      ],
    );
  }
}

class _ExpandedCard extends StatelessWidget {
  const _ExpandedCard({
    required this.title,
    required this.current,
    required this.onPressed,
  });

  final String title;
  final bool current;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: AppColors.expansion,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: current ? AppColors.blue : Colors.transparent,
          width: 2,
        ),
      ),
      child: CupertinoButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
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
      ),
    );
  }
}
