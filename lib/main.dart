// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quis_app/core/util/approuter.dart';

import 'package:quis_app/features/onboarding/presentation/pages/splash.dart';

void main() {
  runApp(QuisApp(
    appRouter: AppRouter(),
  ));
}

class QuisApp extends StatelessWidget {
  const QuisApp({
    super.key,
    required this.appRouter,
  });
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.getRout,
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
