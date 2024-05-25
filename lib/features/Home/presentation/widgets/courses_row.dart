import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';

class CoursesRow extends StatelessWidget {
  const CoursesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Course",
          style: TextStyle(fontSize: 16.sp, fontFamily: lexend),
        ),
        SizedBox(
          width: 130.w,
        ),
        Text(
          "See All",
          style: TextStyle(
              fontSize: 12.sp, fontFamily: lexend, color: Colors.blue),
        ),
      ],
    );
  }
}
