import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';

class BackGroundAuth extends StatelessWidget {
  const BackGroundAuth({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width.w,
      height: AppSize.hight.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff0085CC),
            Color(0xff000E8F),
          ],
        ),
      ),
      child: child,
    );
  }
}
