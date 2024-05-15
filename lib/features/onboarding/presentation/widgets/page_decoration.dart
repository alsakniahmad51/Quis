import 'package:flutter/cupertino.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageDecoration pageDecoration = const PageDecoration(
  titlePadding: EdgeInsets.zero,
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
  contentMargin: EdgeInsets.zero,
  fullScreen: false,
  bodyFlex: 0,
  bodyPadding: EdgeInsets.all(0),
  titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
  // bodyTextStyle: bodyStyle,
  // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),

  imagePadding: EdgeInsets.zero,
);
