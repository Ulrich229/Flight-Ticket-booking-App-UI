import 'package:flight/presentation/screens/home/home_screen.dart';
import 'package:flight/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:flight/presentation/screens/pass/pass_screen.dart';
import 'package:flutter/material.dart';

onGenerateRoute(RouteSettings settings) {
  WidgetBuilder builder;
  switch (settings.name) {
    case '/':
      builder = (BuildContext _) => const OnboardingScreen();
      break;

    case '/home':
      builder = (BuildContext _) => const HomeScreen();
      break;

    case '/pass':
      builder = (BuildContext _) => const PassScreen();
      break;
    default:
      throw Exception('Invalid route: ${settings.name}');
  }
  return MaterialPageRoute(builder: builder, settings: settings);
}
