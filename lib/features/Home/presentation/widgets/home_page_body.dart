import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quis_app/core/util/constants.dart';
import 'package:quis_app/features/Home/presentation/widgets/search_text_field.dart';

import 'carousle_list_item.dart';
import 'header_home_page_view.dart';

class HomaPageBody extends StatefulWidget {
  const HomaPageBody({
    super.key,
    required this.userName,
  });
  final String userName;

  @override
  State<HomaPageBody> createState() => _HomaPageBodyState();
}

class _HomaPageBodyState extends State<HomaPageBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    CarouselController carouselController = CarouselController();
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            HeaderOfHomePageBody(widget: widget),
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
              items: carousel_tiems(currentIndex),
              carouselController: carouselController,
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
