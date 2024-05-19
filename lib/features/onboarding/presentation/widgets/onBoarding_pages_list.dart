// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quis_app/core/util/constants.dart';
import 'package:quis_app/features/onboarding/presentation/pages/onboarding.dart';
import 'package:quis_app/features/onboarding/presentation/widgets/body_widget.dart';
import 'package:quis_app/features/onboarding/presentation/widgets/customButton.dart';
import 'package:quis_app/features/onboarding/presentation/widgets/page_decoration.dart';

List<PageViewModel> pages(BuildContext context) => [
      PageViewModel(
        title: "",
        bodyWidget: BodyWidget(
          padding_of_button: 35.h,
          padding_of_title: 380.h,
          padding_of_sub_title: 20.h,
          imagePath: "assets/svgimages/Frame 8.svg",
          title: "Welcome to the online\nE-Learning App",
          subtitle:
              "This is an online school that allows\n you to rediscover yourself. Take the\n courses and be a better student",
          button: CustomButton(
            iconButton: null,
            colorButton: const Color(0xff009FF5),
            onPressed: () => introKey.currentState!.controller.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInToLinear),
            textButton: "Start",
          ),
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        bodyWidget: BodyWidget(
            padding_of_button: 60.h,
            padding_of_title: 400.h,
            padding_of_sub_title: 40.h,
            button: CustomButton(
              iconButton: null,
              colorButton: const Color(0xff009FF5),
              onPressed: () => introKey.currentState!.controller.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInToLinear),
              textButton: "Continues",
            ),
            imagePath: "assets/svgimages/Frame 9.svg",
            title: "Anytime, Anywhere",
            subtitle:
                "Enjoy the captivating process of online education in a place and at time of your choice."),
        title: "",
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "",
        bodyWidget: BodyWidget(
            padding_of_button: 35.h,
            padding_of_title: 380.h,
            padding_of_sub_title: 10.h,
            imagePath: "assets/svgimages/Frame 10.svg",
            title: "Log in or sign up",
            subtitle: "select desire log in methode",
            button: Column(
              children: [
                CustomButton(
                  iconButton: Icons.phone,
                  colorButton: Colors.white,
                  textButton: "Phone",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 11.h,
                ),
                CustomButton(
                  iconButton: Icons.email,
                  textButton: "Email address",
                  onPressed: () {
                    Navigator.of(context).pushNamed("/Auth");
                  },
                  colorButton: Colors.white,
                ),
                SizedBox(
                  height: 11.h,
                ),
                CustomButton(
                  iconButton: FontAwesomeIcons.google,
                  textButton: "Log in with Google",
                  onPressed: () {},
                  colorButton: const Color(0xff009FF5),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "By registering or skipping this your agree to",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.sp,
                      fontFamily: montserrate,
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Terms of Service",
                    style: TextStyle(
                        color: const Color(0xff0085CC),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )),
        decoration: pageDecoration,
      ),
    ];
