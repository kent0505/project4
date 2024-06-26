import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../news/pages/news_page.dart';
import '../../settings/pages/settings_page.dart';
import '../../transport/bloc/transport_bloc.dart';
import '../bloc/home_bloc.dart';
import '../widgets/add_new_button.dart';
import '../widgets/empty_data.dart';
import '../widgets/nav_bar.dart';
import '../widgets/transport_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<TransportBloc>().add(GetTransportsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeSettings) return const SettingsPage();

                if (state is HomeNews) return const NewsPage();

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
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Stack(
        children: [
          BlocBuilder<TransportBloc, TransportState>(
            builder: (context, state) {
              if (state is TransportsLoadedState) {
                if (state.transports.isEmpty) return const EmptyData();

                return Column(
                  children: [
                    const SizedBox(height: 18),
                    const Center(
                      child: Text(
                        'List of your water transports',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ...List.generate(
                      state.transports.length,
                      (index) {
                        return TransportCard(
                          transport: state.transports[index],
                        );
                      },
                    ),
                  ],
                );
              }

              return Container();
            },
          ),
          const AddNewButton(),
        ],
      ),
    );
  }
}
