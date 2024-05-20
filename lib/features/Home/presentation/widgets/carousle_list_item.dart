import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

List<Widget> carousel_tiems(int currentIndex) => [
      Stack(
        children: [
          SvgPicture.asset(
              fit: BoxFit.fill,
              height: 160.h,
              width: 308.w,
              'assets/svgimages/Frame 2.svg'),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 120.h),
            child: DotsIndicator(
              decorator: DotsDecorator(
                  color: Colors.white.withOpacity(40 / 100),
                  activeColor: Colors.white,
                  activeSize: Size(40.w, 6.h),
                  activeShape: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8.r))),
              dotsCount: 3,
              position: currentIndex.toDouble(),
            ),
          ),
        ],
      ),
      Stack(
        children: [
          SvgPicture.asset(
              fit: BoxFit.fill,
              height: 160.h,
              width: 308.w,
              'assets/svgimages/Frame 2.svg'),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 120.h),
            child: DotsIndicator(
              decorator: DotsDecorator(
                  color: Colors.white.withOpacity(40 / 100),
                  activeColor: Colors.white,
                  activeSize: Size(40.w, 6.h),
                  activeShape: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8.r))),
              dotsCount: 3,
              position: currentIndex.toDouble(),
            ),
          ),
        ],
      ),
      Stack(
        children: [
          SvgPicture.asset(
              fit: BoxFit.fill,
              height: 160.h,
              width: 308.w,
              'assets/svgimages/Frame 2.svg'),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 120.h),
            child: DotsIndicator(
              decorator: DotsDecorator(
                  color: Colors.white.withOpacity(40 / 100),
                  activeColor: Colors.white,
                  activeSize: Size(40.w, 6.h),
                  activeShape: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8.r))),
              dotsCount: 3,
              position: currentIndex.toDouble(),
            ),
          ),
        ],
      )
    ];
