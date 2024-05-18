import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      width: 310.w,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Username",
          prefix: SizedBox(
            width: 60.w,
          ),
          hintStyle: TextStyle(color: Colors.white, fontSize: 16.sp),
          prefixIcon: const Icon(color: Colors.white, Icons.person),
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
