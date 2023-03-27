import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<DecrementCounter>((event, emit) {
      emit((state - 1) * event.value);
    });
    on<IncrementCounter>((event, emit) {
      emit((state + 1) * event.value);
    });
  }

  @override
  void onChange(change) {
    print(change);
  }

  @override
  void onError(error, trace) {
    print(error);
    print(trace);
  }

  @override
  void onTransition(transition) {
    print(transition);
  }
}
