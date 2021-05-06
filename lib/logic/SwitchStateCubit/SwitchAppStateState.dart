part of 'SwitchAppStateCubit.dart';

class SwitchState {
  bool _switchState;
  bool get switchState => _switchState;
  SwitchState({bool switchState}) {
    this._switchState = switchState;
  }

  SwitchState.copyWith({SwitchState prev, bool switchState}) {
    this._switchState = switchState ?? prev._switchState;
  }

  Map<String, dynamic> toMap() {
    return {
      '_switchState': _switchState,
    };
  }

  factory SwitchState.fromMap(Map<String, dynamic> map) {
    return SwitchState(
      switchState: map['_switchState'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SwitchState.fromJson(String source) =>
      SwitchState.fromMap(json.decode(source));
}
