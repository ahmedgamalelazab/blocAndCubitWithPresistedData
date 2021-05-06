import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/SwitchStateCubit/SwitchAppStateCubit.dart';
import '../widgets/switchStateListener.dart';

class HomeScreen extends StatelessWidget {
  static const String ScreenRoute = "/homeScreen";
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SwitchStateCubit, SwitchState>(
        builder: (context, state) {
      return switchStateListener(context, state);
    });
  }
}
