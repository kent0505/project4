import 'package:flutter_bloc/flutter_bloc.dart';

part 'first_card_event.dart';
part 'first_card_state.dart';

class FirstCardBloc extends Bloc<FirstCardEvent, FirstCardState> {
  String type = '';
  String count = '';
  String condition = '';

  FirstCardBloc() : super(FirstCardInitial()) {
    on<SelectTypeEvent>((event, emit) {
      type = event.type;
    });

    on<SelectCountEvent>((event, emit) {
      count = event.count;
    });

    on<SelectConditionEvent>((event, emit) {
      condition = event.condition;
    });
  }
}
