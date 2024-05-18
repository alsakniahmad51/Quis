import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quis_app/core/util/constants.dart';
import 'package:quis_app/features/Authentecation/presentation/widgets/custom_text_field.dart';
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
              image: AssetImage('assets/images/Frame 11.png'),
            ),
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
                  const CustomTextField(
                    icon: Icon(color: Colors.white, Icons.person),
                    hintText: "Username",
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  const CustomTextField(
                    hintText: "Password",
                    icon: Icon(Icons.lock, color: Colors.white),
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  CustomButton(
                      textButton: "Log in",
                      onPressed: () {},
                      colorButton: const Color(0xff009FF5),
                      iconButton: null),
                  SizedBox(
                    height: 11.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have account ? ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: montserrate,
                            fontSize: 11.sp),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: montserrate,
                            fontSize: 11.sp),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
