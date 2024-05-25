// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../core/util/constants.dart';
// import 'grid_view_item.dart';
//
// class GridViewBuilder extends StatelessWidget {
//   const GridViewBuilder({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 765.h,
//       width: AppSize.width.w - 40.w,
//       child: GridView.builder(
//         physics: NeverScrollableScrollPhysics(),
//         scrollDirection: Axis.vertical,
//         itemCount: 40,
//         itemBuilder: (context, index) {
//           return const GridViewItem();
//         },
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             childAspectRatio: 1.327,
//             crossAxisCount: 2,
//             crossAxisSpacing: 0.w,
//             mainAxisSpacing: 19.h),
//       ),
//     );
//   }
// }
