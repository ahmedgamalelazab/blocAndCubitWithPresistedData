// in this file i will program something to contol the light mode and the darkness mode of the applicaytion
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:revison/logic/SwitchStateCubit/SwitchAppStateCubit.dart';
import 'package:revison/logic/bloc/counter_bloc.dart';
import 'package:revison/presentation/utils/onGenRoutes.dart';
//TODO no homepage and rather than home page i will add onGenRoutes
//add in the appliction cubit or bloc to control the state of the background if it dark or light by having a switch button just takes true or false
// make the data presisted with the hydrated_bloc
//section of native code injection and running application

Future<String> path() async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

void main() async {
  //check for the native code
  WidgetsFlutterBinding.ensureInitialized();

  print(await path());
  // call hydrated_bloc
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  runApp(MyAppEntryPoint());
}

class MyAppEntryPoint extends StatelessWidget {
  const MyAppEntryPoint({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(create: (context) => SwitchStateCubit()),
      ],
      child: MaterialApp(
        onGenerateRoute: ApplicationRoutes
            .onGenRoutes, // each time it will try to call a screen it will call the refrenece of the function
      ),
    );
  }
}
