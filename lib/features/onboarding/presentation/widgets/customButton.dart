// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.introKey,
    required this.textButton,
  });

  final GlobalKey<IntroductionScreenState> introKey;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => introKey.currentState!.controller.nextPage(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInToLinear),
        child: Container(
          width: 310.w,
          height: 44.h,
          decoration: BoxDecoration(
              color: const Color(0xff009FF5),
              borderRadius: BorderRadius.all(Radius.circular(8.r))),
          child: Center(
            child: Text(
              textButton,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
