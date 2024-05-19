// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    required this.colorButton,
    required this.iconButton,
  });

  final String textButton;
  final void Function() onPressed;
  final Color colorButton;
  final IconData? iconButton;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          width: 310.w,
          height: 44.h,
          decoration: BoxDecoration(
              color: colorButton,
              borderRadius: BorderRadius.all(Radius.circular(8.r))),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(
                //   width: 10.w,
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: Icon(
                    iconButton,
                    color: colorButton == Colors.white
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  textButton,
                  style: TextStyle(
                      color: colorButton == Colors.white
                          ? Colors.black
                          : Colors.white),
                ),
                SizedBox(
                  width: 30.w,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
