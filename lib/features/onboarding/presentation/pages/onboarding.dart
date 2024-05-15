import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

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

  Widget _buildFullscreenImage(String assetName) {
    return SvgPicture.asset(
      assetName,
      fit: BoxFit.cover,
      height: 500,
      width: 300,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName,
      [double width = 500, double hight = 720]) {
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

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      imageAlignment: Alignment.center,
      boxDecoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: AlignmentDirectional.bottomCenter,
              colors: [Color(0xff0085CC), Color(0xff000E8F)])),
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
      showBottomPart: true,
      skip: Container(),
      // done: Container(),
      key: introKey,
      globalBackgroundColor: const Color(0xff016BBF),
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,

      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [SvgPicture.asset("assets/svgimages/Frame 8.svg")],
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
