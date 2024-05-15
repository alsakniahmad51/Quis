import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quis_app/core/util/constants.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomeBage()),
    );
  }

  void _next() {
    introKey.currentState!.next();
  }

  Widget _buildFullscreenImage(String assetName) {
    return SvgPicture.asset(
      assetName,
      fit: BoxFit.cover,
      height: 500,
      width: 300,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(
    String assetName,
    // [double width = 500, double hight = 720]
  ) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width,
      child: SvgPicture.asset(
        height: 800,
        assetName,
        fit: BoxFit.cover,
      ),
    );
  }

  // bool _isScrolling = false;

  // Future<void> animateScroll(int page) async {
  //   setState(() => _isScrolling = true);
  //   await _pageController.animateToPage(
  //     max(min(page, getPagesLength() - 1), 0),
  //     duration: Duration(milliseconds: widget.animationDuration),
  //     curve: widget.curve,
  //   );
  //   if (mounted) {
  //     setState(() => _isScrolling = false);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      imageAlignment: Alignment.center,
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: AlignmentDirectional.bottomCenter,
          colors: [
            Color(0xff0085CC),
            Color(0xff000E8F),
          ],
        ),
      ),
      footerFlex: 0,
      pageMargin: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      contentMargin: EdgeInsets.zero,
      fullScreen: false,
      bodyFlex: 0,
      bodyPadding: EdgeInsets.all(0),
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),

      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      showDoneButton: false,
      showNextButton: false,
      next: Padding(
        padding: EdgeInsets.only(bottom: 40.h, right: 100.w),
        child: Container(
          child: const Text("start"),
        ),
      ),
      showBottomPart: true,
      skip: Container(),
      // done: Container(),
      key: introKey,
      globalBackgroundColor: const Color(0xff016BBF),
      allowImplicitScrolling: true,
      autoScrollDuration: 50000,
      infiniteAutoScroll: true,

      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                  height: AppSize.hight.h - 103.h,
                  width: 450.w,
                  "assets/svgimages/Frame 8.svg"),
              Column(
                children: [
                  SizedBox(
                    height: 390.h,
                  ),
                  Center(
                    child: Text(
                      style: TextStyle(fontSize: 24.sp, color: Colors.white),
                      "Welcome to the online\nE-Learning App",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 39.h,
                  ),
                  Center(
                    child: Text(
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontFamily: montserrate),
                      "This is an online school that allows\n you to rediscover yourself. Take the\n courses and be a better student",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 39.h,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () => introKey.currentState!.controller.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInToLinear),
                      child: Container(
                        width: 310.w,
                        height: 44.h,
                        decoration: BoxDecoration(
                            color: const Color(0xff009FF5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r))),
                        child: Center(
                          child: const Text(
                            "Start",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "",
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "",
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      // back: const Icon(Icons.arrow_back),
      // skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      // next: const Icon(Icons.arrow_forward),
      // done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      // curve: Curves.fastLinearToSlowEaseIn,
      // controlsMargin: const EdgeInsets.all(16),
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

class HomeBage extends StatelessWidget {
  const HomeBage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}
