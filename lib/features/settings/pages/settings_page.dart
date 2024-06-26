import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/nav_bar_title.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(height: 32),
          PageTitle('Settings'),
          SizedBox(height: 22),
          _ProfilePhoto(),
          SizedBox(height: 16),
          _EditButton(),
          SizedBox(height: 55),
          _SettingsTile(
            title: 'Privacy police',
            asset: 'privacy',
          ),
          SizedBox(height: 15),
          _SettingsTile(
            title: 'Terms of feed',
            image: 'terms.png',
          ),
          SizedBox(height: 15),
          _SettingsTile(
            title: 'Support page',
            image: 'question.png',
          ),
        ],
      ),
    );
  }
}

class _ProfilePhoto extends StatelessWidget {
  const _ProfilePhoto();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: AppColors.settingsGrey,
        borderRadius: BorderRadius.circular(75),
      ),
    );
  }
}

class _EditButton extends StatelessWidget {
  const _EditButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: CupertinoButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        child: Row(
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
