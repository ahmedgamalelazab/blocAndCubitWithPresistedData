import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revison/presentation/Screens/CounterScreen.dart';

import '../../logic/SwitchStateCubit/SwitchAppStateCubit.dart';

Widget switchStateListener(BuildContext context, SwitchState state) {
  return Scaffold(
    backgroundColor: state.switchState == false ? Colors.black : Colors.white,
    body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            // color: Colors.green,
            child: Text("hello world",
                style: TextStyle(
                  color:
                      state.switchState == false ? Colors.white : Colors.black,
                )),
          ),
          SwitchListTile(
            value: state.switchState,
            title: Text("Switch to White mode",
                style: TextStyle(
                  color:
                      state.switchState == false ? Colors.white : Colors.black,
                )),
            onChanged: (value) {
              BlocProvider.of<SwitchStateCubit>(context)
                  .switchButtonToTriggerOnOrOff(value);
              print(value);
            },
            inactiveThumbColor: Colors.yellow,
            inactiveTrackColor: Colors.pink,
          ),
          Builder(
            builder: (context) => Container(
              child: MaterialButton(
                color: state.switchState == false ? Colors.white : Colors.black,
                child: Text("Counter Screen",
                    style: TextStyle(
                      color: state.switchState == false
                          ? Colors.black
                          : Colors.white,
                    )),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(CounterScreen.ScreenPageRoute);
                },
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
