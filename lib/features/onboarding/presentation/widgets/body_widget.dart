// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:quis_app/core/util/constants.dart';
import 'package:quis_app/features/onboarding/presentation/pages/onboarding.dart';
import 'package:quis_app/features/onboarding/presentation/widgets/customButton.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
  final String imagePath;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
            height: AppSize.hight.h - 103.h, width: 450.w, imagePath),
        Column(
          children: [
            SizedBox(
              height: 390.h,
            ),
            Center(
              child: Text(
                style: TextStyle(fontSize: 24.sp, color: Colors.white),
                title,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 39.h,
            ),
            Center(
              child: Text(
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontFamily: montserrate),
                subtitle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 39.h,
            ),
            CustomButton(
              introKey: introKey,
              textButton: "Start",
            ),
          ],
        )
      ],
    );
  }
}
