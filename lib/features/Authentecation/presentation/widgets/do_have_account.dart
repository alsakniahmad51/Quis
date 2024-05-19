import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';

class RowOfText extends StatelessWidget {
  const RowOfText({
    super.key,
    required this.text,
    required this.button,
    required this.onTap,
  });
  final String text;
  final String button;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              color: Colors.white, fontFamily: montserrate, fontSize: 11.sp),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            button,
            style: TextStyle(
                color: Colors.blue, fontFamily: montserrate, fontSize: 11.sp),
          ),
        )
      ],
    );
  }
}
