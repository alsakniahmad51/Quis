import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quis_app/features/onboarding/presentation/widgets/onboarding_pages_list.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

final introKey = GlobalKey<IntroductionScreenState>();

class OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showDoneButton: false,
      showNextButton: false,

      showBottomPart: true,
      skip: Container(),
      // done: Container(),
      key: introKey,
      globalBackgroundColor: const Color(0xff016BBF),
      allowImplicitScrolling: true,
      autoScrollDuration: 70000,
      infiniteAutoScroll: true,
      pages: pages(context),

      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,

      controlsPadding:
          kIsWeb ? const EdgeInsets.all(5.0) : const EdgeInsets.all(51),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: Colors.white.withOpacity(40 / 100),
        activeSize: const Size(54.0, 8.0),
        activeColor: Colors.white,
        activeShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
