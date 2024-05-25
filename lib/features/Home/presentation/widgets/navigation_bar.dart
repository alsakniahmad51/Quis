import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quis_app/features/Home/presentation/widgets/page_view_body.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.pageViewBody});
  final PageViewBody pageViewBody;
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SvgPicture.asset(fit: BoxFit.fill, widget.pageViewBody.imagePath),
        AnimatedContainer(
          padding: widget.pageViewBody.padding,
          duration: const Duration(milliseconds: 200),
          child: SvgPicture.asset('assets/svgimages/navBarSellect.svg'),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 30.h),
              child: InkWell(
                onTap: () {
                  setState(() {
                    widget.pageViewBody.pageController.jumpToPage(0);
                    widget.pageViewBody.animateNavBar(0);
                  });
                },
                child: SizedBox(
                  height: 60.h,
                  width: 90.w,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, bottom: 35.h),
              child: InkWell(
                onTap: () {
                  setState(() {
                    widget.pageViewBody.pageController.jumpToPage(1);
                    widget.pageViewBody.animateNavBar(1);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.r),
                  ),
                  height: 60.h,
                  width: 60.w,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, top: 30.h),
              child: InkWell(
                onTap: () {
                  setState(() {
                    widget.pageViewBody.pageController.jumpToPage(2);
                    widget.pageViewBody.animateNavBar(2);
                  });
                },
                child: SizedBox(
                  height: 50.h,
                  width: 90.w,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
