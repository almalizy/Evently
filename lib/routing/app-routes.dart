import 'package:evently/ui/home/widgets/home_screen.dart';
import 'package:evently/ui/login/login_screen.dart';
import 'package:evently/ui/onboarding/onboarding.dart';
import 'package:flutter/material.dart';


class RoutesNames {
  static const String login = '/login';
  static const String planetDetails = '/planetDetails';
  static const String home = '/home';
  static const String onBoarding = '/';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      onBoarding: (_) => OnBoarding(),
      home: (_) => HomeScreen(),
      // planetDetails: (_) => PlanetDetails(),
      login: (_) => LoginScreen(),
    };
  }
}
