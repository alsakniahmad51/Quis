import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quis_app/core/util/constants.dart';
import 'package:quis_app/features/Home/presentation/widgets/search_text_field.dart';

class HomaPageBody extends StatelessWidget {
  const HomaPageBody({
    super.key,
    required this.userName,
  });
  final String userName;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.w, top: 25.h),
                  child: Text(
                    "👋 Hi, $userName",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: lexend,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.w, top: 30.h),
                  child: Image.asset(
                    "assets/images/notificationbing.png",
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            Text(
              textAlign: TextAlign.start,
              "What would you like to learn\ntoday ? search below",
              style: TextStyle(
                  fontFamily: lexend,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp),
            ),
            SizedBox(
              height: 37.h,
            ),
            const SearchTextField()
          ],
        ),
      ),
    );
  }
}
