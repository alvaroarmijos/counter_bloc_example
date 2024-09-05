import 'dart:async';

import 'package:counter_bloc_example/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementEvent>(_onIncrementEvent);

    on<DecrementEvent>(_onDecrementEvent);
  }

  FutureOr<void> _onIncrementEvent(IncrementEvent event, Emitter<int> emit) {
    final value = state + 1;
    emit(value);
  }

  FutureOr<void> _onDecrementEvent(DecrementEvent event, Emitter<int> emit) {
    final value = state - 1;
    emit(value);
  }
}
