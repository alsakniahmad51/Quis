import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quis_app/features/onboarding/presentation/widgets/body_widget.dart';

import '../../../../core/util/constants.dart';
import '../widgets/background_auth.dart';
import '../widgets/log_in_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: BackGroundAuth(
          child: BodyWidget(
              hight_of_logo: AppSize.hight.h,
              width_of_logo: 460.w,
              padding_of_button: 35.h,
              padding_of_title: 435.h,
              padding_of_sub_title: 10.h,
              imagePath: "assets/svgimages/Frame 11.svg",
              title: "Log in your account",
              subtitle: "Enter your log in details to\naccess your account",
              button: const LogInBody()),
        ),
      ),
    );
  }
}
