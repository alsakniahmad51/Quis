import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quis_app/core/util/constants.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r)),
          child: Image.asset('assets/images/Gradient.png'),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.r),
                  bottomRight: Radius.circular(8.r))),
          height: 90.h,
          width: 161.w,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 8.w, right: 5.w),
                    child:
                        SvgPicture.asset('assets/svgimages/textofcontiner.svg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Text(
                          "Biology",
                          style: TextStyle(
                              fontSize: 8.sp, color: const Color(0xff0085CC)),
                        ),
                      ),
                      Text(
                        "Biology & the\nscientific methode",
                        style: TextStyle(fontFamily: lexend, fontSize: 10.sp),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 12.w),
                child: Row(
                  children: [
                    SvgPicture.asset(
                        height: 15.h, width: 15.w, "assets/svgimages/Icon.svg"),
                    Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child: Text(
                        "1250",
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
        )
      ],
    );
  }
}
