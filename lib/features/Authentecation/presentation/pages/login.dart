import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quis_app/core/util/constants.dart';
import 'package:quis_app/features/Authentecation/presentation/widgets/customtextfield.dart';
import 'package:quis_app/features/onboarding/presentation/widgets/body_widget.dart';
import 'package:quis_app/features/onboarding/presentation/widgets/customButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          width: AppSize.width.w,
          height: AppSize.hight.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Frame 11.png')),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff0085CC),
                Color(0xff000E8F),
              ],
            ),
          ),
          child: BodyWidget(
              imagePath: "assets/svgimages/Frame 11.svg",
              title: "Log in your account",
              subtitle: "Enter your log in details to\naccess your account",
              button: Column(
                children: [
                  const CustomTextField(),
                  SizedBox(
                    height: 11.h,
                  ),
                  const CustomTextField(),
                  SizedBox(
                    height: 45.h,
                  ),
                  CustomButton(
                      textButton: "Log in",
                      onPressed: () {},
                      colorButton: const Color(0xff009FF5),
                      iconButton: null)
                ],
              )),
        ),
      ),
    );
  }
}
