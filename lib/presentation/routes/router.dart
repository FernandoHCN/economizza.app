import 'package:baseapp/presentation/routes/routes.dart';
import 'package:baseapp/presentation/screens/home/home_screen.dart';
import 'package:baseapp/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashRoute:
        return MaterialPageRoute<dynamic>(
            builder: (_) => SplashScreen(), settings: settings);
      case HomeRoute:
        return MaterialPageRoute<dynamic>(
            builder: (_) => HomeScreen(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
