import 'package:flutter/material.dart';

import '../widgets/page_view_body.dart';

class Pageview extends StatelessWidget {
  const Pageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: const Color(0xffEBEBEB),
      body: PageViewBody(userName: "UserName"),
    );
  }
}
