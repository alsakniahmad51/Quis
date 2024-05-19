import 'package:flutter/material.dart';
import 'package:quis_app/features/Authentecation/presentation/pages/login.dart';
import 'package:quis_app/features/Authentecation/presentation/pages/sign_up.dart';
import 'package:quis_app/features/Home/home_page.dart';
import 'package:quis_app/features/onboarding/presentation/pages/onboarding.dart';
import 'package:quis_app/features/onboarding/presentation/pages/splash.dart';

class AppRouter {
  Route? getRout(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case '/onBoarding':
        return MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        );
      case '/Auth':
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case '/signUp':
        return MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        );
      case '/HomePage':
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      default:
    }
  }
}
