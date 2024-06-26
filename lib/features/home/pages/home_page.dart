import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/buttons/primary_button.dart';
import '../../news/pages/news_page.dart';
import '../../settings/pages/settings_page.dart';
import '../bloc/home_bloc.dart';
import '../widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // context.read<PlanBloc>().add(GetPlansEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeSettings) {
                  return const SettingsPage();
                }

                if (state is HomeNews) {
                  return const NewsPage();
                }

                return const _HomePage();
              },
            ),
            const NavBar(),
          ],
        ),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Stack(
        children: [
          Center(
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
          ),
          const Column(
            children: [],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: PrimaryButton(
                title: 'Add new transport',
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
