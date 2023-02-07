import 'dart:io';

import 'package:faramove_test/global/generic/fader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ShowPNG extends StatelessWidget {
  const ShowPNG(
    this.src, {
    this.height = 100,
    this.width = 100,
    this.asset = false,
    Key? key,
  }) : super(key: key);
  final String src;
  final bool asset;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Fader(
      child: SizedBox(
        width: width.w,
        height: height.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6.sp),
            topRight: Radius.circular(6.sp),
          ),
          child: !src.contains('http')
              ? asset
                  ? Image.asset('assets/$src.png')
                  : (Image.file(File(src), fit: BoxFit.cover))
              : Image.network(
                  src,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
