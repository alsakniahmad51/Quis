import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';

class DoYouHaveAnAccount extends StatelessWidget {
  const DoYouHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "already have an account ? ",
          style: TextStyle(
              color: Colors.white, fontFamily: montserrate, fontSize: 11.sp),
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushNamed('/Auth'),
          child: Text(
            "Log In",
            style: TextStyle(
                color: Colors.blue, fontFamily: montserrate, fontSize: 11.sp),
          ),
        )
      ],
    );
  }
}
