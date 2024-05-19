import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quis_app/features/Authentecation/presentation/widgets/background_auth.dart';

import '../../../../core/util/constants.dart';
import '../../../onboarding/presentation/widgets/body_widget.dart';
import '../widgets/sign_up_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: BackGroundAuth(
          child: BodyWidget(
              hight_of_logo: AppSize.hight.h,
              width_of_logo: 460.w,
              padding_of_button: 15.h,
              padding_of_title: 425.h,
              padding_of_sub_title: 10.h,
              imagePath: "assets/svgimages/Frame 11.svg",
              title: "Sign Up a New account",
              subtitle: "Enter your details to Create\n your account",
              button: const SignUpBody()),
        ),
      ),
    );
  }
}
