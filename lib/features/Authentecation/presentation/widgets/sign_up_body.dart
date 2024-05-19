import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../onboarding/presentation/widgets/customButton.dart';
import 'custom_text_field.dart';
import 'do_have_account.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        RowOfText(
          text: "already have an account ? ",
          button: "Log In",
          onTap: () {
            Navigator.of(context).pushNamed('/Auth');
          },
        )
      ],
    );
  }
}
