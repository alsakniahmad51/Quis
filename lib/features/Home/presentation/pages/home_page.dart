import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quis_app/features/Home/presentation/widgets/search_text_field.dart';

import '../../../../core/util/constants.dart';
import '../widgets/carousle_list_item.dart';
import '../widgets/courses_row.dart';
import '../widgets/grid_view_item.dart';
import '../widgets/header_home_page_view.dart';
import '../widgets/page_view_body.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
    required this.pageViewBody,
  });
  final PageViewBody pageViewBody;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    CarouselController carouselController = CarouselController();
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Column(
              children: [
                HeaderOfHomePageBody(
                  userName: widget.pageViewBody.userName,
                ),
                SizedBox(
                  height: 14.h,
                ),
                Text(
                  textAlign: TextAlign.start,
                  "What would you like to learn\ntoday ? search below",
                  style: TextStyle(
                      fontFamily: lexend,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                ),
                SizedBox(
                  height: 37.h,
                ),
                const SearchTextField(),
                SizedBox(
                  height: 37.h,
                ),
                CarouselSlider(
                  items: carousel_tiems(widget.pageViewBody.currentIndex),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        widget.pageViewBody.currentIndex = index;
                      });
                    },
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 260.w, bottom: 15.h),
                  child: Text(
                    "Featured",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: lexend,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SvgPicture.asset('assets/svgimages/Frame 16.svg')],
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CoursesRow(),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
        SliverGrid.builder(
          itemBuilder: (context, index) {
            return const GridViewItem(
              subTitle: "Biology & the\nscientific methode",
              likes: 1250,
              title: "Biology",
              imagePath: "assets/svgimages/Icon.svg",
            );
          },
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.4, crossAxisCount: 2, mainAxisSpacing: 0.h),
        ),
      ],
    );
  }
}
