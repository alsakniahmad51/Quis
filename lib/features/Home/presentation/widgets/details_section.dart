import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/util/constants.dart';

class DetailsSection extends StatelessWidget {
  @override
  final String title;
  final String imagePath;
  final String subTitle;
  final int likes;

  const DetailsSection(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.subTitle,
      required this.likes});
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.r),
          bottomRight: Radius.circular(8.r),
        ),
      ),
      height: 90.h,
      width: 170.w,
      child: Column(
        children: [
          // First row
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 8.w, right: 5.w),
                child: SvgPicture.asset('assets/svgimages/textofcontiner.svg'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 8.sp, color: const Color(0xff0085CC)),
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      subTitle,
                      style: TextStyle(fontFamily: lexend, fontSize: 10.sp),
                    ),
                  )
                ],
              )
            ],
          ),

          // Second row
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 12.w),
            child: Row(
              children: [
                SvgPicture.asset(height: 15.h, width: 15.w, imagePath),
                Padding(
                  padding: EdgeInsets.only(left: 7.w),
                  child: Text(
                    "$likes",
                    style: TextStyle(
                        fontFamily: lexend,
                        fontSize: 10.sp,
                        color: const Color(0xff468CE7)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: SvgPicture.asset('assets/svgimages/Group 5.svg'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
