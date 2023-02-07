import 'dart:ui';

import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackdrop extends StatelessWidget {
  const CustomBackdrop(
      {super.key,
      required this.child,
      this.color = AppColors.white,
      this.filter});
  final Widget child;
  final Color color;
  final ImageFilter? filter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color,
        body: Stack(
          children: [
            Positioned.fill(
                left: 20.w,
                right: 15.w,
                top: -100.h,
                child: Image.asset(const BgAssets().confetti)),
            BackdropFilter(
              filter: filter ?? ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: child,
            )
          ],
        ));
  }
}
