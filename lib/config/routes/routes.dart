import 'package:bloc_clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../views/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case RoutesName.homeScreen:
        final args = settings.arguments as String;
        return MaterialPageRoute(
            builder: (context) => HomeView(homeText: args));
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text("404 Error")),
          );
        });
    }
  }
}
