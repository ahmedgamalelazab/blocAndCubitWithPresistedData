// this class should have a static function to do specific job generate routes to the whole application

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revison/presentation/Screens/CounterScreen.dart';
import 'package:revison/presentation/Screens/HomeScreen.dart';

class ApplicationRoutes {
  static Route onGenRoutes(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.ScreenRoute:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
        break;
      case CounterScreen.ScreenPageRoute:
        return MaterialPageRoute(
          builder: (context) => CounterScreen(),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (context) =>
              HomeScreen(), // simply this is the default screen
        );
    }
  }
}
