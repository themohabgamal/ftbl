import 'package:flutter/material.dart';
import 'package:ftbl/core/routing/routes.dart';
import 'package:ftbl/features/home/ui/home_screen.dart';
import 'package:ftbl/features/get_started/get_started_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.getStarted:
        return MaterialPageRoute(
            builder: (context) => const GetStartedScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text('No path for ${settings.name}'),
                )));
    }
  }
}
