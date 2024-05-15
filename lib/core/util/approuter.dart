import 'package:flutter/material.dart';
import 'package:quis_app/features/onboarding/presentation/pages/onboarding.dart';
import 'package:quis_app/features/onboarding/presentation/pages/splash.dart';

class AppRouter {
  Route? getRout(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case '/onBoarding':
        return MaterialPageRoute(
          builder: (context) => OnBoardingPage(),
        );

      default:
    }
  }
}
