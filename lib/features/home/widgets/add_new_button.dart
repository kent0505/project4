import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/models/transport.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../transport/bloc/transport_bloc.dart';

class AddNewButton extends StatelessWidget {
  const AddNewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 120),
        child: PrimaryButton(
          title: 'Add new transport',
          onPressed: () {
            context.read<TransportBloc>().add(
                  AddTransportEvent(
                    transport: Transport(
                      id: 1,
                      type: 'Boat',
                      count: '1-3',
                      condition: 'Perfect',
                      price: '150',
                      rentTime: 'Weekly',
                      who: 'Otabek',
                      comment: 'Aaa',
                      cashPayment: true,
                    ),
                  ),
                );
          },
        ),
      ),
    );
  }
}
