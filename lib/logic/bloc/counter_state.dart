part of 'counter_bloc.dart';

//counter state
class CounterState {
  int _number;
  int get number => _number;
  CounterState({int number}) {
    this._number = number;
  }

  Map<String, dynamic> toMap() {
    return {
      '_number': _number,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      number: map['_number'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CounterState.fromJson(String source) =>
      CounterState.fromMap(json.decode(source));
}
