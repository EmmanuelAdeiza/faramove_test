import 'package:faramove_test/global/generic/custom_tap_detector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ShowSVG extends StatelessWidget {
  final String name;
  final double height, width;
  final Color? color;
  final Function()? onTap;
  const ShowSVG(this.name,
      {Key? key, this.height = 25, this.width = 25, this.color, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTapDetector(
      onTap: onTap,
      child: SizedBox(
        width: width.w,
        height: height.h,
        child: FittedBox(
          child: SvgPicture.asset(
            'assets/$name.svg',
            color: color,
            width: width.w,
            height: height.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

