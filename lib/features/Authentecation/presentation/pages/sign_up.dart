import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../onboarding/presentation/widgets/body_widget.dart';
import '../../../onboarding/presentation/widgets/customButton.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/do_have_account.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              padding_of_button: 15.h,
              padding_of_title: 425.h,
              padding_of_sub_title: 10.h,
              imagePath: "assets/svgimages/Frame 11.svg",
              title: "Sign Up a New account",
              subtitle: "Enter your details to Create\n your account",
              button: Column(
                children: [
                  CustomTextField(
                    padding: 65.w,
                    icon: const Icon(color: Colors.white, Icons.person),
                    hintText: "Username",
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  CustomTextField(
                    padding: 65.w,
                    hintText: "Password",
                    icon: const Icon(Icons.lock, color: Colors.white),
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  CustomTextField(
                    padding: 40.w,
                    hintText: "Confirm Password",
                    icon: const Icon(Icons.lock, color: Colors.white),
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  CustomButton(
                      textButton: "Sign Up",
                      onPressed: () {
                        Navigator.of(context).pushNamed('/HomePage');
                      },
                      colorButton: const Color(0xff009FF5),
                      iconButton: null),
                  SizedBox(
                    height: 11.h,
                  ),
                  const DoYouHaveAnAccount()
                ],
              )),
        ),
      ),
    );
  }
}
