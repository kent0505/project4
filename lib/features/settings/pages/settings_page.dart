import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/config/app_colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(height: 32),
          const Center(
            child: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const SizedBox(height: 22),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: AppColors.settingsGrey,
              borderRadius: BorderRadius.circular(75),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Edit profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(width: 8),
              Image.asset('assets/icons/edit.png', height: 20),
            ],
          ),
          const SizedBox(height: 55),
          const _SettingsTile(
            title: 'Privacy police',
            asset: 'privacy',
          ),
          const SizedBox(height: 15),
          const _SettingsTile(
            title: 'Terms of feed',
            image: 'terms.png',
          ),
          const SizedBox(height: 15),
          const _SettingsTile(
            title: 'Support page',
            image: 'question.png',
          ),
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.title,
    this.asset = '',
    this.image = '',
  });

  final String title;
  final String asset;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.settingsGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: CupertinoButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            const SizedBox(width: 12),
            image.isNotEmpty
                ? Image.asset('assets/icons/$image', height: 24)
                : SvgPicture.asset('assets/icons/$asset.svg'),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
            const Spacer(),
            const SizedBox(width: 36),
          ],
        ),
      ),
    );
  }
}
