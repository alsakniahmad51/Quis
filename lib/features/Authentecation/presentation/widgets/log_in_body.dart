import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../onboarding/presentation/widgets/customButton.dart';
import 'custom_text_field.dart';
import 'do_have_account.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          padding: 70.w,
          icon: const Icon(color: Colors.white, Icons.person),
          hintText: "Username",
        ),
        SizedBox(
          height: 11.h,
        ),
        CustomTextField(
          padding: 70.w,
          hintText: "Password",
          icon: const Icon(Icons.lock, color: Colors.white),
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
        RowOfText(
          text: "Don’t have account ? ",
          button: "Sign Up",
          onTap: () {
            Navigator.of(context).pushNamed('/signUp');
          },
        )
      ],
    );
  }
}
