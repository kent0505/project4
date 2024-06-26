import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project4/core/utils.dart';

import '../../../core/models/transport.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../bloc/transport_bloc.dart';

class AddTransportPage extends StatelessWidget {
  const AddTransportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          const Row(
            children: [
              Text(
                'Add transport',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          PrimaryButton(
            title: 'Test add',
            onPressed: () {
              context.read<TransportBloc>().add(
                    AddTransportEvent(
                      transport: Transport(
                        id: getCurrentTimestamp(),
                        type: 'Boat',
                        price: '150',
                        who: 'Otaw',
                        payment: 'Cash',
                        rentTime: 'Weekly',
                        comment: 'Aaa',
                        condition: 'Perfect',
                      ),
                    ),
                  );
            },
          ),
        ],
      ),
    );
  }
}
