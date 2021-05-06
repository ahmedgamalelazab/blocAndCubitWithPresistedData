import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revison/logic/bloc/counter_bloc.dart';

class CounterScreen extends StatelessWidget {
  static const String ScreenPageRoute = "/CounterScreen";
  const CounterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) => Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: MaterialButton(
                            child: Icon(Icons.add),
                            onPressed: () {
                              BlocProvider.of<CounterBloc>(context)
                                  .add(Increment());
                            },
                          ),
                        ),
                        Container(child: Text(state.number.toString())),
                        Container(
                          child: MaterialButton(
                            child: Icon(Icons.remove),
                            onPressed: () {
                              BlocProvider.of<CounterBloc>(context)
                                  .add(Decrement());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}
