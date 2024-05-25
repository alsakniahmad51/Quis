import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quis_app/features/Home/presentation/pages/home_page.dart';
import 'package:quis_app/features/Home/presentation/widgets/navigation_bar.dart';

import '../../../../core/util/constants.dart';

class PageViewBody extends StatefulWidget {
  PageViewBody({
    super.key,
    required this.userName,
  });
  final String userName;
  int currentIndex = 0;
  EdgeInsetsGeometry padding = const EdgeInsets.only();
  String imagePath = 'assets/svgimages/NavigationBar.svg';
  var pageController = PageController(
    initialPage: 1,
  );
  void animateNavBar(int value) {
    if (value == 0) {
      padding = EdgeInsets.only(right: 220.w);
      imagePath = 'assets/svgimages/bookNavBar.svg';
    } else if (value == 1) {
      padding = EdgeInsets.zero;
      imagePath = 'assets/svgimages/NavigationBar.svg';
    } else if (value == 2) {
      padding = EdgeInsets.only(left: 220.w);
      imagePath = 'assets/svgimages/personNavBar.svg';
    }
  }

  @override
  State<PageViewBody> createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          onPageChanged: (value) {
            setState(() {
              widget.animateNavBar(value);
            });
          },
          controller: widget.pageController,
          children: [
            const MyCourses(),
            HomePage(
              pageViewBody: widget,
            ),
            const Person()
          ],
        ),
        // Nav BAr
        NavBar(
          pageViewBody: widget,
        )
      ],
    );
  }
}

class Person extends StatelessWidget {
  const Person({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.amber,
          height: AppSize.hight.h,
          width: AppSize.width.w,
        )
      ],
    );
  }
}

class MyCourses extends StatelessWidget {
  const MyCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          height: AppSize.hight.h,
          width: AppSize.width.w,
        )
      ],
    );
  }
}
