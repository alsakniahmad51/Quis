import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.icon});
  final String hintText;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 44.h,
      width: 310.w,
      child: TextFormField(
        cursorHeight: 15.h,
        cursorColor: Colors.white,
        style: TextStyle(
            height: 0.5.h,
            color: Colors.white,
            fontFamily: montserrate,
            fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          hintText: hintText,
          prefix: SizedBox(
            width: 60.w,
          ),
          hintStyle: TextStyle(color: Colors.white, fontSize: 16.sp),
          prefixIcon: icon,
          border: outlineBorder(),
          enabledBorder: outlineBorder(),
          focusedBorder: outlineBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: Colors.white));
  }
}
