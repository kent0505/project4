import 'package:flutter/material.dart';

import '../../../core/models/transport.dart';
import '../../../core/widgets/custom_app_bar.dart';

class EditTransportPage extends StatelessWidget {
  const EditTransportPage({super.key, required this.transport});

  final Transport transport;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Text('Edit'),
        ],
      ),
    );
  }
}
