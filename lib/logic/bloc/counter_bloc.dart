import 'dart:async';
import 'dart:convert';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(number: 0));

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    //dispatching the events into state
    if (event is Increment) {
      yield CounterState(number: state.number + 1);
    } else if (event is Decrement) {
      yield CounterState(number: state.number - 1);
    }
  }

  @override
  CounterState fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic> toJson(CounterState state) {
    // TODO: implement toJson
    state.toMap();
  }
}
