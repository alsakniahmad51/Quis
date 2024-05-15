import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/onBoarding');
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff001190),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child:
              Image.asset(fit: BoxFit.cover, 'assets/images/Splash screen.png'),
        ),
      ),
    );
  }
}
