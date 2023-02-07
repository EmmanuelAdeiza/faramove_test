import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:faramove_test/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RectCard extends StatelessWidget {
  const RectCard({
    Key? key,
    required this.child,
    this.onTap,
    this.height = 57,
    this.backgroundColor = AppColors.white,
  }) : super(key: key);

  final Widget child;
  final Function()? onTap;
  final double height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Fader(
      child: CustomTapDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: height.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [child, SvgPicture.asset(const IconAssets().forward)],
          ),
        ),
      ),
    );
  }
}
