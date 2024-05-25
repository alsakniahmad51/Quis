import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'details_section.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.title,
    required this.imagePath,
    required this.subTitle,
    required this.likes,
  });
  final String title;
  final String imagePath;
  final String subTitle;
  final int likes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image section
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r)),
          child: Image.asset(
              width: 170.w, fit: BoxFit.fill, 'assets/images/Gradient.png'),
        ),

        // Details section
        DetailsSection(
          subTitle: subTitle,
          likes: likes,
          title: title,
          imagePath: imagePath,
        ),
      ],
    );
  }
}
