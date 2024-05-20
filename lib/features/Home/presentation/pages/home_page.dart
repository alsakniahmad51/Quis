import 'package:flutter/material.dart';

import '../widgets/home_page_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEBEBEB),
      body: HomaPageBody(userName: "UserName"),
    );
  }
}
