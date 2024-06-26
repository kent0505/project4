import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/models/transport.dart';
import '../../../core/utils.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../transport/bloc/transport_bloc.dart';

class AddNewButton extends StatelessWidget {
  const AddNewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 120,
          right: 25,
          left: 25,
        ),
        child: PrimaryButton(
          title: 'Add new transport',
          onPressed: () {
            context.read<TransportBloc>().add(
                  AddTransportEvent(
                    transport: Transport(
                      id: getCurrentTimestamp(),
                      type: 'Яхта',
                      count: '1-3',
                      condition: 'Old',
                      price: '160',
                      rentTime: 'Weekly',
                      who: 'Otabek',
                      comment: 'Bbb',
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
