import 'package:bloc/bloc.dart';
import 'dart:convert';

import 'package:hydrated_bloc/hydrated_bloc.dart';
part 'SwitchAppStateState.dart';

class SwitchStateCubit extends HydratedCubit<SwitchState> {
  SwitchStateCubit() : super(SwitchState(switchState: false));

  //time to emit something into the stream pipe line

  /// if action triggered a state on that's mean that the backgroung should go white and everything else go black
  void switchButtonToTriggerOnOrOff(bool newVal) =>
      emit(SwitchState.copyWith(switchState: newVal));

  @override
  SwitchState fromJson(Map<String, dynamic> json) {
    return SwitchState.fromMap(json);
  }

  @override
  Map<String, dynamic> toJson(SwitchState state) {
    return state.toMap();
  }
}
